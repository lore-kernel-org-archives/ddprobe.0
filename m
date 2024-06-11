Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C608386
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718132303; cv=none; b=sTZz1RpHp/6QxT+U5CMOWHFPY39rgbDI+RarSFsiuDnhuM46aMEq1KAW0w2ESsditv12eAPOld9F0kyeoXonXUsztteRRbxg4gMYu3KxyJjm9lI2QH9nHH2rpsUVnOCsYuz4Se1hpebl8ojv3HuU+5ff2QVxhtxUnsN2QX7COhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718132303; c=relaxed/simple;
	bh=FTdzFLhPIXnlTNLwhfEO0975lxJqiP9MJNBY2jBqQq4=;
	h=To:Subject:From:Message-Id:Date; b=fD2sbQ5T05oFjNIICuWK4Dk03jUftB4jCM8DhZDlM6DIyhYFYgbYLvwaJLGZVsOk6tZwhR0hKoDbDp8MNdLoM39t6o4W2nwy2Xinp0EblrIst04n7iABythC+eKncLfwfhu6u+GFyijxbn9nF+LfCO7vmmSuSCrK5P0a0lzwGJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uc74Y2Ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uc74Y2Ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD604C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718132302;
	bh=FTdzFLhPIXnlTNLwhfEO0975lxJqiP9MJNBY2jBqQq4=;
	h=To:Subject:From:Date:From;
	b=Uc74Y2IesNxXgpvN4ZbYPsXRVohk3RSfxNAGg4xQpuosc8N4ktXrKLbQu/7WNeJpG
	 RHiYCzbtoqx5nDFEOMkswX2i/YDs/yW9Pib0Zk43/hZzLHdYBhGZOzdgCL1iecqBIG
	 6yVmCxGBrPsnnY+jzZxidtMAwotnmLwGH9YXWmT2vbLI9/jpWQ4VzIFCb6f0exXApR
	 jJOE+2zFs59P9vIPw4f5xcO7DTEED2CEu8Q/ZgKasyisCFuYrV7hfcmfOwd/v+LMfO
	 S0jWpWVnfrzdfVmTk0BdTBvyyyhA8f4jBEK8EgF5v+HGfNd41gUs/haAXZG4XI4Bvk
	 YQgIuRuUUy/TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8F4C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813230275.11426.17591338509313944498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a597bbaac08ced4a9b3ae17c9324619c116dd6e53ae05edad2b5413977a2001e
Date: Tue, 11 Jun 2024 18:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718132302
