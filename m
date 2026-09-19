Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCD5768EA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789777234; cv=none; b=YAalAbJsaxRdXtxqX/JKQ6sfBEvCueC4SjNAVwkAEux3VO2FOjqqSkrHHFC7toj4jlmYoqojVQej2UIoXyX0/UfBHzpKIYpZvUU6/+OOeHlu43JZ3aGWF1fQrMSGwxW6ZVbr+GAha/UzA7Ki9O7cErNITn+O6WhOx7Ashc1U3ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789777234; c=relaxed/simple;
	bh=eE/d7lUI4lcmrx0SMLwZaMAvzZjs0zZusydUC4g9lMw=;
	h=To:Subject:From:Message-Id:Date; b=tkNWn+q+5H8yW7emi04+aeryf4O1IToFhjs5ulRTZOkTcxFLPwVoSYq+tnYOsv290vp78V6BJRrHDM4GdGlR6+9iDsMJwJH44Pq9bfRuN41oCocFAwhP3NHf8bu2T7wp+MwyNy3duKgzVg/IeqUy5ObQTD5Q1KI/aCLwJSvUiKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYEQXjR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYEQXjR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23B1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789777233;
	bh=eE/d7lUI4lcmrx0SMLwZaMAvzZjs0zZusydUC4g9lMw=;
	h=To:Subject:From:Date:From;
	b=XYEQXjR04F7Opvm7vSD/ZuOZGh9o0i86QtTWxH9DlprOKTe/U39tzg9oq9ABdD5q2
	 FdLNSc6bqqkeQYb/wyMYfyBYZ+XueOSrv+VZjkao8pgOsKYbCrsi/hd11Ilm0B2Vt+
	 l2IAyc1aR341GFazKtsonq4PZMkOPpoC7HESrsqLCfJk5u/tHkM7+cZuFI3zWJRKcg
	 PQAOsFvHkloYQXrlI4PirJe5D4uDS5JAbHDEOTOBo7qa5PvC42FxjhO2VuMm6B93Bw
	 v2C6r0zWXeWY6I44OlNsRMgr3ZtX2X/kT39XhBU18UOWZ7mYMecWvqChsGlSiZclKZ
	 4BgmWDPovwUqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC379C982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977723369.30425.1570080666865175260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a2d224473d8860dbf315ae9a5ea50890506ef36d264e9025dac7a95b2fafc3c
Date: Sat, 19 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789777233
