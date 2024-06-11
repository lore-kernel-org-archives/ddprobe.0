Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE1C1CFA9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718131703; cv=none; b=aZ0jxgeReXY59LpIJJMctmF3tr/lJRMox4ne3/v8NBZ2R/Ya4o7YBCKkUKFeZ0mZTf5fHChDWGkeVbvKVljQae/4oI49BAsp0fUA0f2TXA6BJz5D0YEp3VCco6iEdy/8OuFCqqNLUZ6+pdX5CITALhbR0BPAsHMuvlN6opmemi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718131703; c=relaxed/simple;
	bh=zqvvKJuEIeb29FR3TyJrt+HA/Ju3QF1Hze7oqtJVpgQ=;
	h=To:Subject:From:Message-Id:Date; b=n+Pso5fXXfUscfb1f+uNQOwdTKB4oL67JIpM7KVWM64u1NEsWxvYWUHhkMl+GgQOqmU+/YEHkIbOZ1/V4L5rNRwGxWzkZgApWnBwTdrd8X1RSTmdhRRLz+uETY0swIzdNzfi8c6kjHfaQL3XsMkVCQWEFRtRuGCZd19LZufqAP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOtNOdVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOtNOdVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC71AC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718131702;
	bh=zqvvKJuEIeb29FR3TyJrt+HA/Ju3QF1Hze7oqtJVpgQ=;
	h=To:Subject:From:Date:From;
	b=sOtNOdVGocvZzZWcisOfmE1gI+gXRmxwy7GQtk+P8WY7jHcBmlVVC3fmN4TFeoSE6
	 Qoc3Wn5rFWdb0Pehxc+XEat89xVGerUPWcBjM4S22WaQC7alck+/erar8D9L6Im2Dj
	 Hs16YtniVEVVTmoH3n6ns/wcTppxLAQ/0wBHZCtdhsbxtD3pi1DPq7CslAtywIjdC/
	 KrGR5eO0ixvTf/anCXbgXfwfOOI2Su7lK4X8xPonThUOu5LKa06oy42DrOz43mx+VD
	 WMtdFFZztF36GiOEps6GU7wCm40ncbQUMv2ZtFR87kB0beAuKnbfRA0Uj55hVfwawU
	 TycZoPF3dz6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDA8C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 18:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813170276.20168.270836655989811167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147bb45ee7c363d2041cddb885f30674107ecedc238537fa306a09babc5c59ac
Date: Tue, 11 Jun 2024 18:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718131702
