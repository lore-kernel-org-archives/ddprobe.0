Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0138C2475E2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736943954; cv=none; b=WJW4w3tfShE2sdRl9AGGG56k5JlD0k8COwUqvfPu17g9r8OmekbPFefJ2d1CRIrl5KykfabPa3cPXlgeL9ELzf51YHslz3Qa5eXG4UYri2oEnUuW810J/m5cnU4st4SJs6IGhtifiCJKLwFmtopUyG00/T7Z0WJ3uzXxOB6aOOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736943954; c=relaxed/simple;
	bh=pu6xzQ7BzMUUWBfBNWDgeSgB4aZmeupSES7fJPp5M5k=;
	h=To:Subject:From:Message-Id:Date; b=dtqThvE+1s83lgoaNnWEO6063Dvb63wpq+1Uf4M+oueb4VhDepaeL8dmiUd90N8eKjH8hSWGz6ij7uuQ1x6akdZGoL0Pm9sqRNnC9Xj4iKpeRwp4oCxqxPnXtUv3O4WFuunWmCDF5FNFMO3rH+wrF8mwEvjQ/CO7OVhrwPsC2Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wjng4alN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wjng4alN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8A8C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736943953;
	bh=pu6xzQ7BzMUUWBfBNWDgeSgB4aZmeupSES7fJPp5M5k=;
	h=To:Subject:From:Date:From;
	b=Wjng4alNuvlmflj6JEtEDcDbR7wKmimU6CyCOxrVmdGpRjkmzFOmu+UfLzdzNikIy
	 oLp69Zk/B4o+q+QkZKgg5CMXilzeUsm+JhXFKGaQlyV6sRIYNhV1tRbgsDAp6GrVC1
	 Pcl04L8ZsCd0VYc+Pp1GDdj5NQE7ZpoHC9iPHGD/Z2zg7STuK5HHeHO8m/r6quBiLj
	 fWIG1b48POncuzZrEKaMwpz8/vOpjSmvM460hCDfKsHtykQaObVAaOtTuomJuZnhSF
	 5bDVc1vzG+nBmY2gnV7rLAO8Y2eoHtuXmLlUJCj2ALAxtTgjAV+KWumq4ORzSLsl0x
	 +Tpaio27DTr6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBB4C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694395363.8917.3542211755469071471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25066ea894af2bef78160491f581d0d15197ff16038075a10a58b18b0b43293
Date: Wed, 15 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736943953
