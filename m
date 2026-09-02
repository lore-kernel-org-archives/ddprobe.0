Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEE147207A
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788349835; cv=none; b=iQ7c+dXboHRiUGnpiTyJ8G67m5u4Qv07lZtQYTUl1+Pbr9aNQlTBsPz8u8tZ5gBU01GQ4aus3VtJthDSI6pJ4PN9IULjC/D7wD+RC2085a/UT8bpg/35Y1WgmG53K+WoJOIpOQr5gnZ7Pwe3uLZs7pXJwa6Bl+J0K8BVcRn31D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788349835; c=relaxed/simple;
	bh=JFYHzplI1t0B1P5Hnmn0useOOcrcCLMIs0BnbhfY3PA=;
	h=To:Subject:From:Message-Id:Date; b=C/ptpGAPTBD3XiTxsjawWWncQu1Dq1Ex5Q+egCNnYtb7kmxtpNRZM7CuEzQ9Co84X/8srD+ZWAKpBK9RFVjet1uAZJrR0G+HTxCib1xrUhutZOTN/3lzx+iCJ9Q5zbx9WTH2nVJ1w3iJNLFZysGft8X1NiBlb+WdrrAmMGFHu0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqR/e6qV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqR/e6qV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A99C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788349833;
	bh=JFYHzplI1t0B1P5Hnmn0useOOcrcCLMIs0BnbhfY3PA=;
	h=To:Subject:From:Date:From;
	b=GqR/e6qVGtrUCUXawJnleQA8SYx7ghCmO+TAp6pyufyLc6CuTGzU8tmnnUJT+EAbL
	 wbuZfRTPLkU+htklpn6fIPNmtnpCMGEgn7QaC3vG4jE/tRYAbltihxYD8HnDv3mmgw
	 7/2acHaTxT/gInfZTuyO5JaQO4V8Zr5P5p3p67E24BAK417xdVu+LdP8KTd5ngBERn
	 mgxz63MUMHNaUb4teIJ13OjI3gTJHWB6B3LwkPViXQez/Jxb12As2FCj1uTjLTICZP
	 zkKm9JW/0/NVuZLl2qFp0aKuqsQv94BkIOwyIP8H6t6LjTVwW5TdOw6g8VpY9SpqhR
	 DWdDU0NwBbBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97D0C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834983368.14715.16853022139291114316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3752fcaa8b45be1716606026414dec826950d4204fef0c056e51e6f0df5fbf63
Date: Wed, 02 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788349833
