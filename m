Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ADB18024
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750392594; cv=none; b=YA+lE329YZWXnh2rXhAZG+JO1s/3MKYScH0ZP2wLCay2fOlW1jBuvPMcAavrbQ6KYNtFj8hvL7uD8TmUULvo3AjdLMMaNSCjqOskZP1XU2Cu2qscdXWobX4aYN4p3EIJIuun0JldhQcFYfbjCrfgoVZdfv9Ban4XQVOIn4zJYUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750392594; c=relaxed/simple;
	bh=v3zeHG0LG3Ff+uADrUOIzNE85e/ztDtaQgybINOfs+0=;
	h=To:Subject:From:Message-Id:Date; b=aXaDb5mk0DHHSgCeK0NeTqFd8OaRYOZapVrRuFHT7VJrkdXPo+VdYY+Wi+gz5AN1ACmkdCuxbpvuxGWkpNlhi7zkwcQGsU22frdOaHuAjnOA414uhzB685kSMOPKW63zjX9RMA6CE8aoDvQbyxD80KhUWfExzaZ5m5H2kwfXBVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSwdAHsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSwdAHsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BDEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750392593;
	bh=v3zeHG0LG3Ff+uADrUOIzNE85e/ztDtaQgybINOfs+0=;
	h=To:Subject:From:Date:From;
	b=gSwdAHsFt3wrda2Rac3xQGypBSLSz5Puax8WfckppEaV3AsbsRqwDpWRetzqGQmIS
	 dA7g4Upf+6v0twe2zWrbWzzW7CkABOLkJLJDEpPdB24dXFNcvLa0reuv55RbqVfJCH
	 MZ1CD7ymZtSVoTg2VaWicOY6arnu+2Mm4XEK9XFhtkdkMGwxM3YpODHFX6eW0sBTyB
	 mOU2FBqy2+h4n5K3S+MxMU53HayQ5t1RG5M5q0Sqkj9pQqVYiEpNwVH+LDtjQdcp6C
	 uB/uKbTjo6bC1ZKOQKo30EXkMfzwVTyrVKWN3mBae79jGaNRIAcMpwUqiTviAj1X4S
	 dzQTB8uI+eWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5FC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039259357.4386.18305720149518922292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45b15fb7c12c00cccca7eda6bba1a8e9fe61b36b8525bc03f4ec41b23018e22
Date: Fri, 20 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750392593
