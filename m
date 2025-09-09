Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2097123BCE4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757383194; cv=none; b=JTzP7uDHQqbGFoBoLf3ojxHKIOdWHFtvzg9buG3xuy5qSBkzhzIxkC1ZU4okUScczYmHQEHeP4b0mQzM+d+GPT96m9nCBXfyVcoB2NYU801x0rvex/kqZZH/xRTqF5iVYlxPgqeFkeb8Cd7Oa0eI9nv9p/RSmAzgeJTTHrnh4Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757383194; c=relaxed/simple;
	bh=rPfMCZdmOF08xKnsDneAg9yXKzaMuN/zpCk+rFWvO+o=;
	h=To:Subject:From:Message-Id:Date; b=VZTVfnNMXVwaQVZX2HpZTglYX0fWX0ov/2OYGa6QVVqUO6U/CS3vA7fKIpoWy/InPVt2+URr0d7uxML258qwCs95HVNP0+wZcK0f8+AYsYcm8fdJTmIg4M1O3u4Elfzdkn9MUtwd54Cq3eyJBCHml54w8ay7/OOD/Hlf+MP8kr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCcYJ7n3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCcYJ7n3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B64C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757383193;
	bh=rPfMCZdmOF08xKnsDneAg9yXKzaMuN/zpCk+rFWvO+o=;
	h=To:Subject:From:Date:From;
	b=YCcYJ7n33qMjOom/yiKXrrH6wqNMOYtl6p4Ta5dzcsXYiPhlUNJn64bJvGoC0YsnF
	 ezsiUONm/l5oya5BpUkT0qHE6y7Dg19H+GvvdvsGbSx8VFIaMmkgOqXrBGIfdKoAEk
	 X5aFQSGeLqFYAQfTF84y9cn1klIAwvPX8gSonvMumTlJ3vzbY8Rgi8LeMKwf5sPlO4
	 q3EZf57OokoZ4f206TxS59DkHzS+fmiF5h24/vR9UtDL9lIji6sVlwKIc11c2Rohzy
	 /iC42AY5v2ON6ptUEW0sRUuyfArSYV2L0WBElZtdzm7YfpNKPq0kEvixA4OQDY8nSU
	 ZuS/3QvV0vaTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93354CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738319358.7519.4925355370119879956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72df6ab38a21f9c12426207e3dd15beb601fe6aec7c8811e9ba66205671113e
Date: Tue, 09 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757383193
