Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF4F5668
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 03:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707620896; cv=none; b=JV6anAh+NzDNsA68wfOubRu/TbxsBaTchlvLzYxhjzcPl8nEQi70igliLuTtQddI4hJPWwCTXOB5WU40Qm/x73uJmvJjAnYBRYgKHJAPapMlf5L0dYCyG90Wu9ofCBTCywOXvTJ5nEWkWk59bRB0RerEVyHx1J6e5BVn57qVMSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707620896; c=relaxed/simple;
	bh=Ik08/ylY0hTR2wKsW+sYYG3ZlgvG4sFDGYyxKdC1Ibs=;
	h=To:Subject:From:Message-Id:Date; b=lS+kbCq2IsL9SQaGpmU3y+3dGCf8nB7Kq91mqHf/5qnHKCief12DLB5E7vZnisdTA+8PonprgbA7GMnGba92MgXA1INc+MXV2gwjpZzkH4ZSIpiS5ZtbRZZPvpsjRwS9q7APXumVHaVvS0s9QG/P3jvez+GJUQWk66lUvPbpdh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmHK/MoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmHK/MoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820A4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 03:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707620896;
	bh=Ik08/ylY0hTR2wKsW+sYYG3ZlgvG4sFDGYyxKdC1Ibs=;
	h=To:Subject:From:Date:From;
	b=RmHK/MoQWks/Z/VWAL7/hu+c2pE14UdpGnx7vs8fzJbcGTfUX/ceRdAr/f/xBbgfw
	 iPcXDwrZaUpUWQUBRld2XY+iLIQJbY65zEi3VfG/e6bq1pDNUNhuas61bsWE74EZU1
	 Q611zgDR0rJaf6QEG8pMP4p6E8PtbwzMudfk4hDMvTAJ29E1Gto5TPVhIdVTY5qI/E
	 ES147tZQpCdnQp44T4dgDqdGTxUB3+N0VZjTsk/tN0LZALJraG5PmEG4GWcoiGo1/L
	 MzAwIIvh3OldjUK/8MKuhGVRTTGdyv86LZfO4hjH93SofxeZLtm41EnViREnIMWDcA
	 D228bqYoSTUMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68338C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 03:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170762089639.3112.11514756278314756882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598a812491485e86221cc2bd97d5569a4e3a13a86814958f1dd1e909d65cb47d
Date: Sun, 11 Feb 2024 03:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707620896
