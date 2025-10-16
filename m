Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3D227732
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760600394; cv=none; b=UXoStO5xHBZ9H5Sy+m3LvPR1OntCjV9E8ul49kY0gRuEcsboTh9GVQcxxWL/3IQZRAyFCy2/IOO/eXiNr9DpDZZfRbWWf9vEcODXoLNY9i8zuhPiyLgp9f+szdPFTmhY+i2VSdUMl496ZkvvciqfkRgIgb/h7nV+ttzwnqLIYqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760600394; c=relaxed/simple;
	bh=gWRzQ5PdySIBlmOWihe6nv8etxC7zvmDWiw9Ykt4ejw=;
	h=To:Subject:From:Message-Id:Date; b=Mcs/2aibIqZbEiRq12FgGFvSd/ZMtUn1RkIAWZ0z9FArwNuX0yQWBIJSBB+pm38I3kjRmpaO4CZQK8WiH8rEQPI9sN67yhWam1UUkLVF9WqflkracM/M6vFK/Vit/cJztYQp+aS/vAq23eEZ6lUv7Vchwi2cfMpWxu2gwXAd9B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0cLegRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0cLegRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9767C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760600393;
	bh=gWRzQ5PdySIBlmOWihe6nv8etxC7zvmDWiw9Ykt4ejw=;
	h=To:Subject:From:Date:From;
	b=F0cLegRJmMWknzCVQY1j+8IaJcP4b44A6GDr6GnwzjvagsSS8wlzGJbq1gPn1U7Bg
	 Z5L0JfCJvuOV1k62chjMVbJFNj5oWv94DjuR2JtkQ/4I03u5An0Qlm3GKITohU2Nar
	 vyVWWmO9SbBlyd8ycdKAD3oxTKFJ28G5pMCc4F3uU6Wfvjf3e+D7WMrAcpHNAMyd99
	 FoHfFUpCw1bQOeu+0nTI/NEvHZKM10GgmgxmxhxINPXvXMK+DMuaTEUZVjA737F43p
	 zBzWn8dYpyjDp4UWlHCftyZPo7RK91B7glkUCJY67dQalzk1HogJ8Zmc8VYIo2nKy5
	 z0UAQlj+w0kVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A18CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060039358.30327.4533275026387257190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ae735f51eecb350fb1616a48acad82d52a6b1448e8a8a7ff015d2095c6e220
Date: Thu, 16 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760600393
