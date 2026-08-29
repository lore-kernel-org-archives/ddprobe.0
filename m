Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4D5279907
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788028234; cv=none; b=PaG7n/RHp2D5IhI9urVN9pI94Wz3LRzTjtwZrDzI1CEckeEUo7kQvqLJUO+xWK6Fo065lJFKLfIJ2EGjR0v9zGFNqwdX535/8dhDqzhrd1Rgw0/sqzQfi1y6aOcO+ftUWWWx9+Tj5QeVAUJ3BWXZmsVDhIgDvhf9GdC8OdFEeKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788028234; c=relaxed/simple;
	bh=OHgzoFc5N5MBec3IZm3CIRMIvyNE8yMq7VEDO0JOxyE=;
	h=To:Subject:From:Message-Id:Date; b=uND6GWbZfzL9TqsUherTwaTeDKZ2Nzxw2rzKd21XwP5oF9ZeJ7Rdtgo0S1e3EPYYgHInh5S3DVleN4Q1AD3tZIEuWfBIkO0aE7ea+9vOgIzfFOPjqUmfrawa9XmNtZLRgwagYdVRY1mIg/oP+gz//xqiSC7KiVVn9TcykhYmPoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImFGJlLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImFGJlLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6B7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788028233;
	bh=OHgzoFc5N5MBec3IZm3CIRMIvyNE8yMq7VEDO0JOxyE=;
	h=To:Subject:From:Date:From;
	b=ImFGJlLEcemz1Uj3bzM5+PMN661g/9GyYVxImTKcToYosqEpd832VZ77f+xnc3GZF
	 ZyC8EEnfnB0as65qOdqm5IllT4ibtJalabmXTxCCpRkCBAzPv1W1nwk6CP6lkiXZi1
	 7dgaqNrn0npLh+wKvZwjW/4XqPVMX/hHWr+XQ8xo7ijf0QZJO9JYAxJGv+/fE2N88T
	 20w290OT316VZUZbmkiw+nUWzRG956OoAzB0iLbbNSJWu0I/Xx6JiFutUl3J4469gm
	 VyjIeRJPaH1V0RSEnsXv1ZfszY5WEpJzaGF8Dx+9UAoNEa8CEKH7cl6vutu8fpk++J
	 n/XkdvX8Iu5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA719C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802823368.4397.14029190231792000964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d4a926caffc03de17f3bbaf291d20662b309b61c6efa6209df761724cc4f98
Date: Sat, 29 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788028233
