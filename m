Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567CE4AE8A9
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790597434; cv=none; b=e3e7WUnhIU3ESzzfCSlpwA0GaiNZta5e+4ro6mf8VDDZram0+slxz2uxJ8/pu9EPsX+IrutuimxFP8B27QVZY4+gg6/+Z3P6O1qSIakbOjzmmNtMF4AQGXIIE2q4CKoVjvIQlJocE2BauYPTZdjPIHyTOeYaKK8zYvW4uWx7WhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790597434; c=relaxed/simple;
	bh=yUZ1VAD08CV+bpy/JltL1MwT3VldWhK8HyK9kOk/fa0=;
	h=To:Subject:From:Message-Id:Date; b=q6f8/qYb6ysX6v4k7aUYGoirkedbxW5cWfqI7gV972Kv1Eh71HR6vvHP9CTKLuBarkPX27UcMcjQCXyO/Xiilc268HEtkcs5iwi4SruUBLXpYq5Ra1ZsYBDtdWSSb/9ccl04jT+p7ziTrjyt9ZA6eaWlarrXEXUF6mKN1/oKb38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uygBB4SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uygBB4SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C02C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790597433;
	bh=yUZ1VAD08CV+bpy/JltL1MwT3VldWhK8HyK9kOk/fa0=;
	h=To:Subject:From:Date:From;
	b=uygBB4SEbTBRH+1X5SYP3GzRHxWuNgl6e1AqfIEI0H3ON1P91QsU8KG3SWt9yuaYs
	 kUcwZ1ONAUrkKSABjojrdU4i00lBfmtLWZnBmde3AjDsGfr5QTOYVBeqKooOtKJYEo
	 y4Ebdjd4UNqONk1aG5+PlSFr+Is4peoO9r3K4Vg4OzfToxwaH7leoNpXZ8llFJW+Ca
	 OnaGBHEopEIkcM9fCUKm89NVSopGcqnKwmBOALtIAyRzotvjkiFL0IoY3RDSt8XU6b
	 2y4e0kx3V7cXz5Cy7BdGUwbLU+jY8M1of9QPC79fxl6dW0H+Bon5H2sY2D5rTXjiM2
	 uHn47VUjbhYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF34DCA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059743370.26889.7455855615611689121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e1e545239618f28e0ccef155686418f83a04bde2ff7046b7044fe16f8007c4
Date: Mon, 28 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790597433
