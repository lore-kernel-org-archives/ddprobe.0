Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152A81FF5F9
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762624794; cv=none; b=Ep3QpapcUuioWsvj7UFgVszXZmWLltPZXm9zA9+iHWQ/9IngmJTAdP6d682pvG2jRQvoO2zThC16xQikdWbI35ZpSwrZ6hWbD4Qc1soee085Qy5TyUileRgD3FkgpiIZYlz+iF5htHOMpEhDgcULj5JHgDsmprAsGC1TzfXLI6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762624794; c=relaxed/simple;
	bh=JyW4NP+dvc30rLW9NDv4rIO/dGUP4XEG8t4mqFpGjVg=;
	h=To:Subject:From:Message-Id:Date; b=pL1yhMj93pE37KoJWBCqfgf0yYhgWFXXuaNSuqTuTOvxHf1O1JinjMV4Fo3aeSg82DmJVlCuGLKNPNDaSNHzAW5LHIR7K7XuqZy+s/Dt5GDFJnNvjact4dMHTt08CnL8FJX2TKanS61PGZcqTX72X7BLDRvVwM6A+p5Foz0QjwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPjSBl9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPjSBl9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D91FC16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762624793;
	bh=JyW4NP+dvc30rLW9NDv4rIO/dGUP4XEG8t4mqFpGjVg=;
	h=To:Subject:From:Date:From;
	b=vPjSBl9FJIHx4YGoVbrPtddLmdlKse776iOw4ohgEZ4z+fhFXPHzj13vjFSd+MstF
	 0dAkw4MZVo2T4mtfgXIHjLKo/fXmawphAusBIOOvzBhr1zXd6eXoCVLimncazRr/DL
	 fsj5ZfHEkYag601DY7f0ZVVMqgB1IEEj/tKlYBu+PKulOs07SAT+EClUPAMPkwU6ID
	 vRhRuAaqKRgamJ1jVdUYpFCUeRGR4D6os9N4QM+7pnvfVPocx9SZ2MU14fPuuCDWlj
	 0YeCc6Ekj4aCz52MRIHh5baMdOx9sHvrkG7yMNdnV1effwnffN9lbM4a8e1ddcQO2U
	 b+NiACwhSuLrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A94CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262479358.16332.6457642844696009290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828384739a73faefd4935bdb3c8df495e2b9b7d2fd536302ce680707842b6af7
Date: Sat, 08 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762624793
