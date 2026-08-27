Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C021330650
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787823034; cv=none; b=PkfzpbOGoyjt0OOWun12jYynDvXNQPBtPfVjREMI48to3uQcsDw5PATJU2ozyMSu3zhhz/PkKYbfy+Z6o9c66e+dPaiIUB+tueUkxf06pByDOIXZ44SROcm4ZERlZTBtra68jyxT60qiqrCr239TPwQuXZJgcbODz+7sa+aOvxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787823034; c=relaxed/simple;
	bh=posENJidIAntAbMEkE3ftfHR7CAOWhup0U+QZ1bypdU=;
	h=To:Subject:From:Message-Id:Date; b=L4BD2Ku/+iSlafN6GoVb6wlGfFoE6cw20OuXe6y8EHrPbxUrM2XBDjSVhZeNpU+DmIkCSo0sL13JoK2VJI4sU0qlI8JAaektEAywp1i9IOulLdeYnrm+jR83+p1Q726CTFak9ua0Miu3fxWG1kVlLI9qW/NDCZlThLQbqHKENo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACYIDJhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACYIDJhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BE2C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787823033;
	bh=posENJidIAntAbMEkE3ftfHR7CAOWhup0U+QZ1bypdU=;
	h=To:Subject:From:Date:From;
	b=ACYIDJhlNYc3YAGEL64QMI6vkvyz9gWu49ANmxCOOU8UnP/bA6ZfbEqx01XE3EgPj
	 3iWgXYXyuvcZogMNVxK3IG6qpQ5w7W+1BMKDNwaLMdjXhcGdGL3zhmjxj/jTpJEfh6
	 GyM+pvpLjtc08vvodtBkADgCyg5B4fLQlfvxTbenzZdSFVu50FEq6vSfm2xMwJFP23
	 xQ1nC7+bXYNQkmOGzuuT5ZZQpbA0qwyBy5fdOmcX70Bz73tENhvtbTgE771UexkeMc
	 GzNnomWy6wLlx7cPejiWavm2TwutxwGavNTXQ4uuJDhJD1JUwcRVszVlNNrmUVr0/8
	 192euD5nGH6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1058C61DC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782303369.2040.14798373911458118201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd152c077d5f95fa6a1195623fca44be3485a0cc6ae5792ae57025c2e5fc670
Date: Thu, 27 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787823033
