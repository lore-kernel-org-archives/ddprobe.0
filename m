Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183E813AF2
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757641794; cv=none; b=knpT+edeo7gLod1iO8MiliChwPl/TxVTBMTKT//4gFna3nxuZD1wicelM/QLEGMN2OxAYiceh680B/e2j71ttOi260LEvB2Sb7VQ496vGtzMRlGV1fXjr08we7eJNQVuZyhzH+r7sqAUFViWAoNTmFM7YQgP0iLgY6oQe7THOZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757641794; c=relaxed/simple;
	bh=7MsvqeoRDD8Ou/jrE5+kgw61rOSpb+fdrcuHxiPtGQ8=;
	h=To:Subject:From:Message-Id:Date; b=rS1TfL9/m90RCHHX2gX4CV8Etzjy2r7PdFlJEn+PQkVWeleJgrc7gzy6QjYUPbGPJ6rDEsSfUJabYfp7tzsS/Dn6Eb2aAC95OpFMWVv+g18VActBKIZPfBMErnXVNu0JpKeEteGuRYTW38cc6cl/UK+QKXhRtsMe62WPcbAJ174=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIoByGul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIoByGul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D5EC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757641793;
	bh=7MsvqeoRDD8Ou/jrE5+kgw61rOSpb+fdrcuHxiPtGQ8=;
	h=To:Subject:From:Date:From;
	b=IIoByGulldfNdOLK7x5nL09f4cWsZkbZqFahMxszjor2J8+SQp7He5rwGqsPIrLDV
	 Q/fw2bDyAEcOAS9JodUSb1tswziwQA7Kz1AfY+8jUwyk4kDIIzcbX3MW6SJHrvoHt6
	 MjFucJhmuBDFnr4hambabgS/bs6XtZnYmnyPmY1zj+tbLpXov7rPQNTYafBj5lQnND
	 HVESncAkIVOU01QIXhN7h5gGfZ7pK9K2Fd9ZrWw2zv7uP9Xm3RxlBIBSJasufDgxWi
	 huuaubQ9iQH989PT3e9G7kTNicwGpObv1EkmWfD20OqtJc+2my3TMpIZvtSZK4jm34
	 ecyYmRHcXqxdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE44CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764179357.1467.14509529829900624698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e666cd8792b7e05e98c05b5cec170963684ccf23fdbef745235cbc7bfd9653f
Date: Fri, 12 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757641793
