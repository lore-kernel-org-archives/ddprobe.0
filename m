Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339BE26B2DA
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782784714; cv=none; b=iXjug/vri/55sK040pujeoBdxTKicF0TrUvtERPRZEB8L/Jf87BkpSAOmWTKl9XurUpxgGz5vNLaB+mL4Vj4+QHiDfbFr4rwB6pQg6oXxSk4WU6/BulPsBuRve9B/Pn6MdWBjAthYJzJYNT//FZUC1u9qOLGitW1LVGEf0qYbHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782784714; c=relaxed/simple;
	bh=CJeCYg8vlL8NsdXw0N6IQodqCEKzy9AFzl1+fLucO5s=;
	h=To:Subject:From:Message-Id:Date; b=AQzsTk1jjGp/T00M9bl5k2OvbIssedCqNH04Z+RZIcZrnAmEdfnVcbeAZ+yTd76qtIX3zbPZ3MC2bLsV9ZvPTAm3Rv92AXkkH4SivfO3zXQcaPsHfit+O6n1ieWGHVnHRCZxGNTBhPWvYGQiUgD5JDze19oS96dNJMNDHMsDaHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQ9TpIA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ9TpIA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C647FC19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782784713;
	bh=CJeCYg8vlL8NsdXw0N6IQodqCEKzy9AFzl1+fLucO5s=;
	h=To:Subject:From:Date:From;
	b=AQ9TpIA7O9LkIWccJrnzwmF5BO/sXaci/BEeT/vNb+vAYGOAm2kiwjsf5bau46GkH
	 St9u0xnauQOEn1F+dWx3s1D9C3GK+hHR/EUoyaiOSlIVOU0mSbo1OhMUjZxzs42erj
	 lxQTM8oCX+Uf0KKqaXoz+Bp25ZDslrSQ5EADWX8C+EihjIQysF8srVZ8hT/fRqyYk5
	 y9KpNr7Tc1hWfkO75pJKt3YTI0z6lOfIqZqXJwzgGrJjB9Iw17sV4ogASsT1XI5YFB
	 6zRPXye+1M+swsEfxOkiFlJslKY6rwuaAzoHf3/sR9UdCFVsShN+rA+Olq0mg+s6UG
	 DG9keaQ1OUC/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC9C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278471368.10235.1100197576542188669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec83c5d0b221eab5cde281289f0679149ea00e3ef591cc1024c7bfb77510b15
Date: Tue, 30 Jun 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782784713
