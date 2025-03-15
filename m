Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D18199938
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742073595; cv=none; b=hJMUb7eVMgKx9oLw5RJCxzeVqLbVo0ATzByZ16LPyXupTeT8xT72swM+QAZeYtWqzyfciSQir1d+tgjf3vrDXNYhSmYVFmbQkDLPVzAWu03ZBlPewMF+vxnP5o/f6kv5OrFij0SzkrewFW1r69LWOHffQFqk6MPZ2XkTzJ/3iHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742073595; c=relaxed/simple;
	bh=YrlrKs1dHrSarPqriCp27Q8ZYk1ihpobA1c7eczcJFw=;
	h=To:Subject:From:Message-Id:Date; b=gX4kqqNVoardd27GonqTn9E6mcpK7z0ihmnOVCCgQx8Vv5jHc0obcUFpurBIaXC3KcwuqZ0DjvGzfdqe0YTVXu+SUyCTCkqvWF617+pmcU43gjKQCwKcqj3zxfnwE23RY9bn8LjQDp4sytzluZCFMX+PoYMOEsrYlkcgi1aXM6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxZk1Y/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxZk1Y/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38C2C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742073593;
	bh=YrlrKs1dHrSarPqriCp27Q8ZYk1ihpobA1c7eczcJFw=;
	h=To:Subject:From:Date:From;
	b=CxZk1Y/g1IW3Gjtrl9ABRpJSoK5drYHL7iPES31X4A96g1/i7LB0MDwPtDa8yZ1Gc
	 RdofKCZiKrZOqQffqJc8gRTbJNC/9fbb5b7cFG1g4KvXOC6E1I/AnkKHpsRow0jkRD
	 QHAbkApr/7Nv5uUWskthGwPalKXU+xzsAmQ3hRYYexQGhRnZyr02Lxg3DPAnD+g9LU
	 cI4624INS/r8l4h7qqkta8IYgUzSEJjfweoW/l8YObiyBgRnhyxaf4iQUyrp4eRJMr
	 jcxNnle4h/cBho7gpCjXb7hX9jBe2p9Zx+Ey9TDa3qcvjn3mrTfzXEhJ9z4NYEj7PB
	 rcimU3/SeXNYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B3C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207359359.17774.6702733626777187611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed9f99221dfbb68bf9c366b5fcb7cf53ed07a653e89bdba8464555457b5fc27
Date: Sat, 15 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742073593
