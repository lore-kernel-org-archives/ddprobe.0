Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A8D243958
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739049354; cv=none; b=pQiRlPMdWicQLWiHQpjODjGrtzJ4o68rH8CUtpnEKq70zoFstemLSU/qShxw1xu/9Sl6F1Lb+IRfhK4GwBfVTaTa+7TeQbL2vR9FHBx7HMZnu/GaVCL3TOT+DPZbFRk4z6eVmX+c2De4Q+pKRcieTG/9NSxGoc/RVErNRs4znjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739049354; c=relaxed/simple;
	bh=9Cae0NAwK7GsvnamHQHoXngn57vnerRqwX9XTTTcAJE=;
	h=To:Subject:From:Message-Id:Date; b=NWT5un80HS1dgLj9Kje/znqMvVvfM4kLIsCa6OWqNUP7wakerzvIpZxj9la6X25DJLNlDfBqJa7uwykpyd302AtINTwGEoL+CXErFDCIlalueHSBTAbwQ9Ohiss57yBQUyGvTj3RTO5gUypPvjvpfT6z+JiIQmV1FxZdmow5hrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/LOjLpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/LOjLpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD64DC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739049353;
	bh=9Cae0NAwK7GsvnamHQHoXngn57vnerRqwX9XTTTcAJE=;
	h=To:Subject:From:Date:From;
	b=a/LOjLpwPmX3Ve/nzpaRrkcetJn2IsUqgS3LThfCnw0VHLdobXddMncay2x07wFic
	 0JvwdSoYNHnw/Wh4R1VxpRM31+cUGKqfkM47tczxzQQx5hGvIvJjZMjKKgc4BuTpkW
	 bVvlnVBCsadxCk2YskVTiMbtJNLupQM7/kjSmRSLlbgiEIW48TK2p9ydaguZIXIeXy
	 XO/CgdKYAu7FLwwjl94/W64R18Ju9/TlORzFJemG3RAiIrB2/pug24QukX279eDuWk
	 SMlHir/RbmxyiAu9hwbKZ93nGAfy36+qML6kiv+IHWpFwuYgNzqB6YIi6RiqBzLxot
	 e8JEPk+AUwoFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4DEC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173904935360.5181.16256495771448254766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4aa0047da25739e561ea04275ef8c3c263801229e2e0ae7d14a75d0d641f7ca
Date: Sat, 08 Feb 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739049353
