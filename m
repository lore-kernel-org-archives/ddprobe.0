Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369AF26215D
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739294454; cv=none; b=MTcQAocfSkiIRXicnqOpONDMLhyjGQmp3uR2771TuM2oZWfQcQryMlH/61nbNso072mSXkMIgSKQuEH71Hu2h94eu4WJSNv0WUB1tZxHFjZQ0ILvxYEl7aY/iPZ+ICCnjp754GZY7+ILxQWdktJHoRSL6gFPN4FURROyP4hNn+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739294454; c=relaxed/simple;
	bh=d896sTGnbs4kfAt+PPmkun/v9F5DzZ/4vmQIwZctZ1U=;
	h=To:Subject:From:Message-Id:Date; b=Q0uXoRIGTzzoI552fpSPHYAMWde8yMe4UGxjLAtv8bCcvI56hYytpSd2Kb+w9ANdkPxSOgiAsZV+XEga5mXpP7sCu0ZHzI+VJbGt0e4YlK03Jrf4lktwjavDALl2X5oh2FGwSjGn9mGFexHK6eBgbqoD/MK6v6lENkEqBgrnPlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gruMgfii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gruMgfii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A541BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739294453;
	bh=d896sTGnbs4kfAt+PPmkun/v9F5DzZ/4vmQIwZctZ1U=;
	h=To:Subject:From:Date:From;
	b=gruMgfiihUXRZCxcnCeIMTuDjKJXEejo6iswOo0vT/ra2zmva7bbD1U+Mkf45tUhN
	 fuUagHb2Z3zrEmFXCaNnDROSw/DYMArEFL0VZ5Yl5ei2RA/b0CEMmayuOub3vpl5Lt
	 YeMYMaZME38x1xyNRPm54kz6PrOji6UTY5CC1p/hiO1zD+UA8z/YJXIUxmAqbOqiN2
	 vl8L89ThsrKSJIuB4PLvOVkcpsqDsyxAfdC/3p/uZ2KM8+aO8IGZVeLGQn4Fz2UK3M
	 QeVm3vRHsJ1tPaaHOkvblMt1PkL/qPcFJ1olquubg8o0RadQ2l0kbn9ClbAMDh8eA0
	 I3L4Omw+V5S6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660EC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173929445360.21690.16150326455137882348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3eac66ef90eb6535885595bf44be2a1d28113c92c0edc3b26eab8584f7a195d
Date: Tue, 11 Feb 2025 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739294453
