Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8221E47DB
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733227554; cv=none; b=fTYR0ROR4Oiyuwn0n23/4mw4XGN/z89+0a23QE+WtjRB/F0ZuRrOoEhSG6GjF6JNfz/L4jXy0GJw5QnXGtkR5mrggZp85luDuupJqUJUMeG3Vt0y1AtrC6zchFOqTVU9r68e+QiDHkzusGm0EsIbak/EehVJC8kNHA00OvmU/Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733227554; c=relaxed/simple;
	bh=rQPxzVqBVhBJaaE2lZm5y37TPK4Lgfmy9iqg8MMqBxM=;
	h=To:Subject:From:Message-Id:Date; b=cEyUsxJ5c7XdBUp1psuiyDZDwDlY/h8CmJ+PyFX98xWwn3CvpUBXAV/v+GaBYewdk6M2slGqZJDsk9/vKAfZRyypm2R9DDXc97fRQG4ProVebsWpTnDyIfKcwkX/4crkE69enkdEWRuA/cYjnpacZufDZdOOBZWQVPCyqZZClBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zfc064cX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zfc064cX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFF4C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733227553;
	bh=rQPxzVqBVhBJaaE2lZm5y37TPK4Lgfmy9iqg8MMqBxM=;
	h=To:Subject:From:Date:From;
	b=Zfc064cXCprvt+92CK1FW2PK2djEeQ2K86EJDDm1ApwUXOBYDgnuNRzdJFCPoVIP9
	 jprpks/n+5apXcv7sDNdAtFKOV8l0bK1+wpeoatoPwyq0541oPwpRS2N16w/ziVUQe
	 Qzld5Wp4VW9JA3u6qrumxwb51BPilD7k6LqULTZY2fnfTzOo4PafNZpC926UWAzah1
	 KWKrl23q0glrdUk8u7CSZe4QZa69odpj9yTyPP06XaSl9iI03P9V9SpvTlr8LE1Vdf
	 IMMfcQ72mlhnjcuKlOW5QneSUucwvgG4q7AOVuSGArCFmNPimzxqFBGaAXFJsneB2X
	 2BTMM2IU30FSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C213E64A84
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322755363.23001.998354306308120828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55c430d6ff2e333f350eba737d4fda57f420df6868b11d809c30e24f220e12b
Date: Tue, 03 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733227553
