Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C642C2857C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770396833; cv=none; b=IEUZTAeDG7nREZq8vNcauyzlo0fHHju5fI6V9wiuhCe8dyJDvEfOmR1suKh6vJ2ny/tMsflQ18MTvSzxLPh0yMz8IVUfOV3PJ6eyH+t882KhGl76Q6HOuJXdhfNlROMJ1evyjfxd3UJiXUNuvllp4lZhZvmb599HfTT0dMkqABQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770396833; c=relaxed/simple;
	bh=KnRjmVjvtOqal5crtM4k09T4NDlDctw7UZUAu4PtvfU=;
	h=To:Subject:From:Message-Id:Date; b=scdzqzAz1yUm1J1mMmNaANKgJBocp7eG4xtkmvfid0/y3zwArIOKAPWpBRXgC1XxPiYwEEj4dIa1ZtiYYS1GoONYiydeehDnYsvSXFldphNRzenqZWEzdbXXGaFgKVoOsdBgrAeaiO31Qrcg51+TljVkiqaGZtONYiyjtDzqNCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ongG4L6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ongG4L6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9700C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770396833;
	bh=KnRjmVjvtOqal5crtM4k09T4NDlDctw7UZUAu4PtvfU=;
	h=To:Subject:From:Date:From;
	b=ongG4L6WRyFMwqoRd8cr/YSCwEW6kJ5err6PKfJWCZFPULOn/GLR4yq5I0Pqom8MY
	 pM+qVNTIxKmoEnDU5YeiKh2i0AGsvm4badnEx2DPs982qgyh3MUtmkJffgEz7gDd9k
	 gOS+UqKsJ7kyDQ4ySqFXkqV9PdZHaLNQcagN2mrgcwdeYPH2Lhfze7EkG9762gfWqy
	 anILPPHGdtE/eU562BYGz18g/q4kfWz9tDG57KDEiV+cxKXIqB9DYNcnAqjZUfUOAO
	 BcC4ANvRt4AHAqHqvkfSp+c0ZXwvgz8maVB38FILRuAb26FYDpufnoOxzI0X6E1knh
	 wRODCuHvUDbdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD7EE20B6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039683359.16057.3862293582544368702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13fd74bda646059d6bb481f5d95ece794c462b98f3f1cc883ddd1d577245f33
Date: Fri, 06 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770396833
