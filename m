Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58692381A3
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745072994; cv=none; b=Ze9XceDVTBypy4yE89wzeHO5YPqdRJ3j8FXV2NiOoXfF7DjCdI3UPnuAbVO5pCSSwbm1M/8St7JPgYAzHxmR4Sg08XuVMr/+egprMKJJFHGFr0DBFeXWLF4F+LVYCsxZ97jFyu/4ghzJ6XtbwCTPA+l+/R7E/XQB0aJ05KllPKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745072994; c=relaxed/simple;
	bh=wwk1N+5QjvDv5pBbgWlz4z9BoOvvuth+REQJjgB0llM=;
	h=To:Subject:From:Message-Id:Date; b=SngGyv09MXZhim3BSdCWj2+BJF3DuTEVMAd26NjWOI06OMCoPv0WP1Odvt2EzNaM/TJiQEEhD4P61EVjJOMhk/w53js7Kuw2FtUEoOipwy+54NuW5g9SNJ5jVA2oh+LMTpuL6WGpXT6moQr58CsdS0raakLO923p5TSrxpkMQgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKMk3csB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKMk3csB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745072993;
	bh=wwk1N+5QjvDv5pBbgWlz4z9BoOvvuth+REQJjgB0llM=;
	h=To:Subject:From:Date:From;
	b=dKMk3csBw0xvix9YD5Hmt2SYuWT3uK/ohLzSih4aDqmnGndcsNOFbIuoHLkPCAUrB
	 Fft+eFJVnwITgmzRcZOHfrom8ZFiGVVxE3zKD9SpMHvmJw9T5/OxVL5zXTAaqasyCl
	 7+QXusoGBYbB/1XJsqSTre24E0KPElyEh2+AbXa6qX/lj4GCpw+jxeOey/yVdPz3DW
	 wLUDVUXSvLkZ1Qx1O+kMEPSCJjSBLRxV1K6rub2gbTpugj48cPagr0p/+Yx8brZAdV
	 zgzF7ngoisn9fxhyBfKyXAzITCN+dIiCGiwhA/iGF+OsKEYQVkN7MwurgslGhGQBDa
	 ekV4BUchSp9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C54C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507299362.18133.4414516655326501259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e1cfc8fabc62136cbfbdb698326f4bb7c7dad12d4873b69f62a5d5ff964038
Date: Sat, 19 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745072993
