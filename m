Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5A04405
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717116263; cv=none; b=l8S5JbrnXsh02F904UXI8lp6bYVECXOj9bPkACvNfxHtPxyXlXkUQ+4nryd+yvdBp61Eje2Gl9IwI/z1iLbLk7cPyva07Nx6GiiA3MzIa32ScQz42SziTK3kPBMYSbHjUomxf3IZbDxAfBbIexHn+0s2OXel8X4SrPIQZOxIm6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717116263; c=relaxed/simple;
	bh=60fQK0oRt2AAKrhWG6cqrVD+FgRZqfhVYitkBCmbHsU=;
	h=To:Subject:From:Message-Id:Date; b=VZYJdnJUi6920I0VivnCvauR0rVIJub8W994nLc5T6WQ3Of3RpKxt/pMh61IL/iUG7hnxybG6UM2o+6+sWb2yJxkmdHWUQMKKm4oIpG2q2UgcqgaQyfsjS+ARDSyYqtUghXmNb4Fkpbu/LX4ELtRqyU94YodLcd8n809VPmhDMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti3wlWxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti3wlWxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC83C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717116262;
	bh=60fQK0oRt2AAKrhWG6cqrVD+FgRZqfhVYitkBCmbHsU=;
	h=To:Subject:From:Date:From;
	b=ti3wlWxsmkDu0duqb3/ysEEnbpqKfFe9wILR7NAWppRItv/WvJdawLqQ9pihK+tOV
	 i/7ugmKj1MphAHwVAaYadcuAk3njRVjK4QB3WrNROloFVLLEt6HSlPPkNwVWJihQ+p
	 eaL3IasLUlAKnq1aAtynLzGz6yRtS2dlPS6bowQpaimPTqf6BDyey2Ee6AwtK5GxzG
	 O3ORZ3UiWM1bkzvpTCCBi+EW6h/ZMmifHjY0sT9qwadP7Tu0yKhX4UGWVyds8baeEP
	 Lwrgthxe4IrV/pWnr/6GvLF7AhgllGYtWHWHUbh/aqPIVDioqVrSNvXTctTQ/25u50
	 22twA8KClVeog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68F3C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711626280.22550.14052756930800597332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6165d5c08e0fa9db85e40d9d8ffeeeed76f217e99144e99647a2136db2e7dd5
Date: Fri, 31 May 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717116262
