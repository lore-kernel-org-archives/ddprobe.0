Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C324A3C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773432294; cv=none; b=cAFk1beDRtsiwjqKp3PGiQaQdylS6dvVKPKC5NC230XXw5SyCg2csYi0xvPgVJxeg5bXyfi7R6DO2wEPmywstNaOApuLyRol2Qdtb5qt/9N1XE5M7UzwdtNk69gx+oqv3Q5zOMusybuD6KYR+dvMNiVpxaovBmlX222Waqx8k6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773432294; c=relaxed/simple;
	bh=QqCete9rYKyrZVgmJR1REceNMctnsTVxqZjISkVJJkE=;
	h=To:Subject:From:Message-Id:Date; b=sKjzmAzLdoZ6sW2Nlz4rpyJbCHT9DcSon80Vlbw684qvS19QjmNzoB4Dw7TfFvoVC8V1j5tpQTU1/au2CZEZB25EJC+rrTptWacIFW9woXo2n2F+jogpAJL+KFlMW31oNClo+NdbPi217Mpclnij9RZJCl5yIgEX4qMCq3Fx0Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl6r6WMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl6r6WMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A936BC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773432293;
	bh=QqCete9rYKyrZVgmJR1REceNMctnsTVxqZjISkVJJkE=;
	h=To:Subject:From:Date:From;
	b=Fl6r6WMJ0Zn1jL+aGcH7QHO9bmEr4wqfMiJk7Q1FUFT/ZNjgGM39K360xOT/bPuX+
	 SN53iPlEHGbLx/yECrKb0AwQi0DDiPuHfTKB48U2XY89pmrnwxtlvT6v1pBP0yEAIr
	 gcf6u3rxU/7ZtABiXJ/TWyKZaU1cSwPDI9m9YkjXQooIhLYbYX8HM491SgDOdXgLjN
	 xZ74UApQocDBoecPA0zJZ5DqdqXqcc2XuumxhfDbaJ80QPMkjvheTp/7pu52EtT8lg
	 z9VmPGnIu6xe3+qU0yUUW5dCeiNltNjY1pO57bOFDrqW9ZLNfgaI/30tZ3UmPSXUmD
	 31PXnPZ8ugmZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B8107BCE1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343229358.20164.3756625477668463716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27abf522a0f8f4f39c6de172e63a72b4ae0cb660b946c35dc2d3a33270ee1b4
Date: Fri, 13 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773432293
