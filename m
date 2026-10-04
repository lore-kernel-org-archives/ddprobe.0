Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9DB21FF29
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791114634; cv=none; b=WM7tJ9FY5qaRZKV9v+VZm5RTdC3e5SaIuigNXC3+ICxerzuqqH3c7KVEmsfMErqGhKiTPj6gdnX+hgFke2bC4lTgXj2fGX6kkBZaFNl46kzPN2uNHNy+wSFzW47WJEnr2zqlFgk8kd+ErJfejYQJds3Z0QAdvS1y3G1konQk99I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791114634; c=relaxed/simple;
	bh=4uYuKxfx24wIToZ2/eB0YcADxYFmFyGGlJCLL+cJAwQ=;
	h=To:Subject:From:Message-Id:Date; b=V9Wdhi+LJS/IUEfrw5VKlhTqypGZB7sVIlnzF8OaMQGsWbw6EQw6pBoJgUyLNNJw6Yg3va1eX8P5TMF9N1wpIO+UP307V9WGzxhGtRt3Oi7O0TV+MG8p8FTQpbtJnxuN50h2f81ecXwemaZBXM7A/IoK4n/QEMK/8uRCOqDc1R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nP7MmQhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nP7MmQhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE909C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791114633;
	bh=4uYuKxfx24wIToZ2/eB0YcADxYFmFyGGlJCLL+cJAwQ=;
	h=To:Subject:From:Date:From;
	b=nP7MmQhZYUlKrX9hB9t4LjwBF4AArWensrAFfupOQ9OrbF6mtcT3ripYcKrconncK
	 eS04Zf1TKG2Ix0Ceoz7wnN5LnbqpvogjWNsulFVBJDvGbwRm0XQbmup9ktOLtuUmWA
	 iMWiXHRajBJQm5IeNCcacRMtfXrOKl50QGECv3uGyOUGzR4qsqxdmXvf7v4mPcSf+U
	 3ZYIJo480VBLv4SLZoVwuEz4FheyCZivBz6foOiUUtY0q3XIIV1zfX4Azhw59jCAyg
	 H0Rva8nMpMSHPuXf4TRAAgR8aO0ZoM0ALCkRjmq8Q2jxnNOd8tWcHqbVxNaX7OvvVZ
	 t5uXkQ9LRtDqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC820CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111463368.22315.9098749438090161829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56cd3eb50c7c92bff51724b35afce614baf6af0d87d09feea4052feea7aafc8
Date: Sun, 04 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791114633
