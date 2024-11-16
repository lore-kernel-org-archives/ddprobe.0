Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D0A2F43
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731733554; cv=none; b=N/iqSiUQ1GgTAsc2PvyzlCC5E6XBh8WDV4G/4wi16NJlj5TeQOHIq5jiHWx9odbaWLvaKeDaJjbK39VEmenxlZdzkLQuUluXbnnh6psN/1WhSlXB0UHcTpZ1cwwtItfsYzqiwVvDI17macZ4lW+k80LUVISO71bX8MICumGEzek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731733554; c=relaxed/simple;
	bh=Y/u8o6PWQ9IBqEbDdt0J+tMNe4MjgbesL27hVs56LiY=;
	h=To:Subject:From:Message-Id:Date; b=L75ysSh0vP17oRrjL7dgWKDiNCCycvoVCB6gUrAou5eK8+YctkjKIWz3NungzHldqG+3XM2VIfEfIJTFu7LfWzJti2yaw3pWaIQpcBHTdmCgzoH2OkuQEpm4VeAHr5nhXleBAolAvaay/EgPRAhDXs/m9heHRtnRDdfvd8PyVPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhTcjRZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhTcjRZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53EEC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731733553;
	bh=Y/u8o6PWQ9IBqEbDdt0J+tMNe4MjgbesL27hVs56LiY=;
	h=To:Subject:From:Date:From;
	b=HhTcjRZQcmaLp5T9f1XezTNEC0zRF5cjV8suQ7NfKRDukgLCDY34ncXA26AuWJkK/
	 tn4R47ySoobSTTkM9PUtJr0bbLJeD2qKEGucLs5UteBoOoP29H1ycMe0274zg7KkEg
	 o/PG04OuhYUW9LW/vTvBgwo4+P7vPQnMbtxBi8UMzN2j5tL8PTjM0EG2kOyHRkMSg1
	 FyeCHxp6oLysiI8ODrE8P6NrOsWHEzy0wYQhkGBn8X7OB+or/r+flbkltWqqtNXWbR
	 6Vtr8RGkpulEvaKYNTIyqSFhcQNxwnWu8dYJMYo1qiPlmdniHuFvDaKDI/41ZZNXi4
	 ng33n9cPHCKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9711BD68BE3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173173355359.11991.2533016381513298230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24848182701a330f901d2056ff73f360d1304b716882715c03d1aa269bc15d90
Date: Sat, 16 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731733553
