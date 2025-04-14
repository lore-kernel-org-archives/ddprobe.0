Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C37D4C6C
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744595394; cv=none; b=G1MMt+3FW+9qguouXpWOmW2GRZgs3YZqPGeUXzZJmVvYvCo5PekNnIpqhBicPZHLTsqZ4whbRQeyxdF+kpNB/+Go656M3DDifFT35tOvFvU6LJS9qvHKCV95dvhdeXfj7dRNbX7AiJ5iPsIBKvvjpNnbKHZqLV6v3miyrM7squ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744595394; c=relaxed/simple;
	bh=MN+dQKQGOXUdJDujfUXelGi5HGWGsLxc/57RBQePAAo=;
	h=To:Subject:From:Message-Id:Date; b=KhPAcsW/9FbSBCvqSB0dpPTWH7jra+adl6C40NF1aWX+Uu3RQenwS0JpGX/6c71FthzSO5hv/AgTXwfmDsE2NWg0cPiwc0Znw7Npou7nPF1xhSWlOK74bwCjSSZkDVVsTS4zLhh640ziEo38zoPQ6XqXcePjvmX5rZMJ/f7dmLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja2iI6F9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja2iI6F9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B825FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744595393;
	bh=MN+dQKQGOXUdJDujfUXelGi5HGWGsLxc/57RBQePAAo=;
	h=To:Subject:From:Date:From;
	b=ja2iI6F9zg13ibQk4I0nuYP6Kefe5LBcMT+akncH+DpxmjrhUt0hX6vVX9cdBcMlR
	 mBipdZ1237sJ+FgyyAY5m0HbFOgCBsA36QtuJHTnKm3ugcul5NFXSIRpGvjKmmb+nQ
	 hTW44K8/F68XsC2OYFqvnWL/NFEEw9WwRvzAEO1vxBfgsjTk4Ng+n77+BC9UY+vb9c
	 KjTwLvjGx9A4ffEOxlAqGNxQBD8C0pguLbkTPtLCZikiIeiJByjZnln867AOpu+Gkx
	 xwaJjwkkojHR5AqI3hfmJfTWUPzS6PFbZgMBZmZvI2dO7uoT4BWMczMHxAxcsTZkNL
	 YMNBqKEq01Xww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3910C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459539362.9578.181618326770453047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047e02c39483427efcbb03204b2486c205eaebe15359827c8e7895fb1c678c99
Date: Mon, 14 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744595393
