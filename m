Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C951E5B91
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752030594; cv=none; b=kJW8b0U8WfqqZ3DCC/VqZKUt9wWCEIKf5eDZTIy0Y77tAVwZ4jic4y29dmv/52RUN7RIiEl6sXS/pebkMdMk/vRDzEjTfwnn547NQVEA6ArB4gHHDcEtQLMkeHxgxMFYzTfpHreVZ378HM3JAn9teamY0vQ/158I74KO7xDfR2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752030594; c=relaxed/simple;
	bh=lUaDz6S/cyWeJHjgAU1CQp+cD8Vl8hXTGOAC013m7qc=;
	h=To:Subject:From:Message-Id:Date; b=tXgLi0iRAIA0luiR6+qa4OQ7qMbDbDRUsCznn64ZV+O3nQ+LlIbsYyKYb1uZ2A8SvUbELFZ+E8fxnOe7pkenUokC/TwFiSSmfrfOVtPTW39zNyWYBSC5YUxR2VqqyT0rHJQbuhSkIvTIDmBTEdA7Sspy9XacZyNCcXEbhNKvy40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hI8WFaac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hI8WFaac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A0DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752030593;
	bh=lUaDz6S/cyWeJHjgAU1CQp+cD8Vl8hXTGOAC013m7qc=;
	h=To:Subject:From:Date:From;
	b=hI8WFaacdLFhVBfHCPUEA54xrJatttdGyRxNBnt6aIWtESrbKgwOf8NZnNRQWz21h
	 QTIZN8dKX4ydA7Sfcw5G80pS7AJgifoBTs6EWJs8SyQVR+pgmiJc2l4oGLfvKgI++c
	 AxH5nlBHJ8t4t/oPxB71cBwn7YfiUIvVZe7TqHLvBTSbDcs4VItGXG1S6FSo+R6D2+
	 amfBo8cmHOrCr/gyrLSasy4n0Ny4eqF1BSzjM2jp0K9WfUn+bPXvKZglxag/534BNL
	 J+FRt5e28Fa2uJGDLeTQpqjzPIlKqCq/qVm2OXHMipK7Uwq+JZoMHB+zG4WBzLVoPU
	 0GV1Q3vTz7/kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6477C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203059364.27175.17961557991001831838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9628aeee33f7e7c7ff370a4d9dd6c1c709165bf86c9c03b03b466fb41d0849
Date: Wed, 09 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752030593
