Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2407EF
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714870943; cv=none; b=RtjvDt9jFnCMidk3b2bNvSFysbbabi+OR1nPErOMrmtQ2niUR941pFwoCK168otos4kwRm3uyWGQf2Zp46Qpt7AAkl7IYVaJMQugXvr3KS48++/ugNRf+vOwn6bJXc9U0NE1WNebQgaZrTDBdMI743BLEcAMq0MA8glpPlKqqzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714870943; c=relaxed/simple;
	bh=UHDJItYagewz4t9uwss0Zm8xeC7/MD3vPzRjG+8hEeQ=;
	h=To:Subject:From:Message-Id:Date; b=dpdv2wgG3eDmSMQOlCKdK9t0VB3AOZ+FMo1QpdG62LYXlJGhE4vbthBqOXEWEljGYcRsSxN44kFtskgx0S93ECKlpUJ4wDRsZnzFZn2V5k8nzhIVrBCPw57CLxGNmuS80a0nKhZmWOLG0lY16+OilI7+nDTlX3hzyFHpS+6h064=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwegD9XD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwegD9XD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE09C072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714870942;
	bh=UHDJItYagewz4t9uwss0Zm8xeC7/MD3vPzRjG+8hEeQ=;
	h=To:Subject:From:Date:From;
	b=iwegD9XDMQkTGJ1CoI5gVCOhsFAMX36sg9vBg5Dj6WU0RUMtDKxBWUkHWM4LJGx5p
	 vo6HZAe1JZLuiekg8tg4TwgW2wECzd6+DKN2FJSrNBWdnhbEgBsm4ic9uvn15ERgcX
	 wjTOgT8kBuDIHk0o8eBPvMpXvpCsDQMU2R7MLAiELaZoh2aWco8Fyvykjv/kttuKNv
	 KaF4JfLMDJP9iJDeIlDHIlkJTCrv7abmJnhCxePd72ih1EcKxygV0HKehGWSxMg5ir
	 dW27pSRUMJp1nujIIWeMe5YnkWULtKuN6cFnmdZ9RzXkO5EEhhQ9ca/+hXgmOJS0po
	 I0s4UJNdEALHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A61C10F1A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487094278.15336.15055774999909304718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecac874018326bbf537f03a8e9283d042808b4ec71b49412cfb657efeaa27abc
Date: Sun, 05 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714870942
