Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AF3357D03
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778782834; cv=none; b=RlKl3RSdHBDahFfDS22W/gDUuGJ2M12I4nxJ422EqlfaZPvQc/jHN8URdb53q58t+cvgXVMlaKZLJB7lSgS4qh4xHJi6T85yhxC88imTmlhBP/iHVv9I5D8kh33yDmn2q/55nGzLlPCsnAl0ZjfNPerPD4W+w3j25XESo6hQrvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778782834; c=relaxed/simple;
	bh=+wJ9vd0ktpKo82psiiClAdLIoYJBd2/f04JdpCQec0w=;
	h=To:Subject:From:Message-Id:Date; b=nrkG+VQ6vwZAfbfW6a8vutcfsS8Cbo4pWWqrLhHZd1KPpvni7PZ8DYDMN0XIHmyM65YyAxQUaxlvjlCnOExhObE2E5b4/7UYuN1QQUj0FQpo3P7zuo51aVEFSp6YDlj5sSlXev+HVoJn5op7w9cXl/ihHn4xwlUfds1IwWnSp04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khEpjoGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khEpjoGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9649C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778782833;
	bh=+wJ9vd0ktpKo82psiiClAdLIoYJBd2/f04JdpCQec0w=;
	h=To:Subject:From:Date:From;
	b=khEpjoGdafkBSWFoHJ/VBSGS7yaFwzCSNS3QoIswgaGyljaMTR2BsuTgeHCejJjAT
	 yWopiWJMnsfSWU7HOd9JjT2e21//BiHTc7wu9hzKl3+oguwXjhayAIL2p/HfyP/jDV
	 WQVq3VG2jmXyfW+lURqrny4JYFmTSohovXTI3KKp4hqEU3CExI2T3paYR0mmFCm5on
	 ulav1Oh15eFghI+BPdIzjFXUffMUsST+E0MHGdaIx6F6niR+tFZhobQAS3wb3BGPM7
	 qmOVQUsGPWczAJD7nTPuAeEHswzgOhZ7mh+69e83jqBtZR8rt+XUMEEPiC+nv4gVoa
	 qRp6c7xmkqwog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA41FCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878283368.7422.8984306059891999688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01238424f8cb9aca74f3fe1fd88810f64015222c01b1f7e2aaf325edc4185121
Date: Thu, 14 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778782833
