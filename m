Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF521D432D
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764321174; cv=none; b=J1v/vNeVsAkqxutm1MDwVcynshmlUDHmOxyFX2GVAnRXlbqTY1kCGC1Xa3TVrEtqukMu8hYZCcUVjNZHO22vj3VUa2qIKRxGAi1lKfhSp4duNwkmz5Ww6c997VbrPT/hXJCh2Zkceht0/YVAzXxUcOmGolCwdEFDT126T9C3kkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764321174; c=relaxed/simple;
	bh=TjbZK3qkP3YDWXwqyRW8a3NEnovId8sAN5DuTpHhAGc=;
	h=To:Subject:From:Message-Id:Date; b=PNuCwtvoOCujTx82IRlNfvYgHHUlCzpvpyuoVZCaZEBRsGq7wWPE/BsqiZ0TWzqv14t5DZ4lrCM7HWNrjhS3imgD1v1wLWzFf66Ut2DyJyUNuaCC5fwCJK5eAEP5KVtKzSfox3g5A+HjfMu/bWvU1JLpUDL4D+qGJs/1mgIYcKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MchYC/U+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MchYC/U+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83BFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764321173;
	bh=TjbZK3qkP3YDWXwqyRW8a3NEnovId8sAN5DuTpHhAGc=;
	h=To:Subject:From:Date:From;
	b=MchYC/U+fndCp8ix8P/48+6ZZMi1N7ADHdsjlXR3+LPYhwDdVRna0++G9hAPIqd17
	 9uPzigi/rml9YNahOfKRnG+iH6U71CodND+9moL/6E+SYUYFDR9dYaBovUelz17RoN
	 DlObTaQhzqVg8o5spz5PqtvNimdEtJqLZaO5jIdnu+dHfYkOgGiyW3oCwvCFqkwvzE
	 NVstuZYv18hiNcL42rXOsCBChlAKl88znKT9i3DJGL5cuyk4IC9kn6/4UklZS61n3/
	 wQ6rkrTBQncq0csFiUwP7DMDx31qFfy/8lx1vgCT8OJkXlz0E9slrheZZ4EnhfE1V2
	 x5Q0AYnIA7/FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E1D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432117360.11843.11815075081885679202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f62f01c88c786fb474ba372983cc6d161cbf4d6eaf6b79ec5043bc2fb625085
Date: Fri, 28 Nov 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764321173
