Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F85368965
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772173494; cv=none; b=WjP/WGNQZzvn/UJLcNEiqyy5PJtLF99fJxck/GiU3FECG/gUjtzrIhh8MdswwMfuW2uGg8EGfdW5jehV6ZjL5/cpTfGHtQ+fZ3bgCRAIzKdw+B7QLiRj910j2btgc5DPjJ1S36Fb7cJfwNfaHPuePemoeOAiqrxA1YniOzJotD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772173494; c=relaxed/simple;
	bh=JwUaU7AP3FmG7vLGOyyYaQfF6+IpmjzBhh4GCO9eXZ0=;
	h=To:Subject:From:Message-Id:Date; b=KbudAETV8aZ+ME64EjopS2OdvxZWeXLmbmIStJYzCyGD+MCokv3MoPDjBSqT7h/aVQbA9j3DlQSR6gpuKqObnmbzxn8lX8dwXOMxoF6iW9HrFjN98qIPr8GTkr82ASXexkjxQt/sa/KZJGUeeMH/YdKCZMcxOrXO4YRc8sCH32A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANwkjL6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANwkjL6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F3AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772173493;
	bh=JwUaU7AP3FmG7vLGOyyYaQfF6+IpmjzBhh4GCO9eXZ0=;
	h=To:Subject:From:Date:From;
	b=ANwkjL6eE1Re0upV+xofheqs/OKguCd4+r2POaEkCebnK+kMMI/ljde+lYVqyDYuW
	 9dPYZPcPbM4B8ScDia2zdECi9igUOyU85c5MuXN3NsoLdTqlhnsFNVfxe1mv7FQ47x
	 JbnZzrfmtMN9/a8Tb9KZOTS1dLhz3cAaADVfOxueaUoQjZtGH2Nfh4++I4TomzQexo
	 JbTZRynXxujugYSPhGCJPqdqhiiQwHfbNgNsK2gz8BRuraoVGs8uHJiTPleaXE1y9N
	 O4O/+jtvZueFnhqPws2ggDJOmK9l8HkTZD81AZdIATLufM4TtQtLPQ/noo/98DJCt8
	 glCEkKXMyHJkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95120FD9E3E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217349358.23853.10557344205574504640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3080000d7f1c4b3895cd888bf0146f80fc84831701d321d07c35cd7bd9e618
Date: Fri, 27 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772173493
