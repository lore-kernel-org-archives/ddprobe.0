Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184FB367B93
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780033354; cv=none; b=jNUEgbl0jxKTojbc5Y9Tk9M7AS8uoGqLrALbRk9pZb9FiKW0tIqGyYrcDng2x7HSdavAh4q1NZYeqS9WfmbZN+SECnbXwT3uesUUb256NKXzkI+8x7FSaIVi+nLFm/Qdq9B3QoAGh9Jvqfr0neP+9vT7POSw2EaPTiDtewYH5lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780033354; c=relaxed/simple;
	bh=DkVOpqNJSaubqvOPb/V/3vDyU5u3J44iMuqUCQUcAOQ=;
	h=To:Subject:From:Message-Id:Date; b=V8qUPjYIZP4nKlxjMQir/NRuuEwy6EPswkMcjGJVa1gt49+DSB5nhw9tawMeMMZzYkk6N+YaNzspLQlsdLpVGyDyovXo3tbWU5ybNipnPNjUiIAWpyY0g1ajpB/8Qg6rkPjM0BccyCZHQNwPHyxqjydlYaO7F5jI2Eq1TeKj91I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yh7klUKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yh7klUKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B414EC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780033353;
	bh=DkVOpqNJSaubqvOPb/V/3vDyU5u3J44iMuqUCQUcAOQ=;
	h=To:Subject:From:Date:From;
	b=Yh7klUKYhuH0Vcy2DtTBn1IvvKrSRei5+Dp3DCy8zEYUBcPN3w3GAloOEjjy4FIJ5
	 1FLn5tEWkutwggrmenA8YyC5gXIuCDHPqN0MxS0ZAYd6Lf268txa6pR/vLHHf0IHe3
	 ebZebvi/qZzbajMGEyhxmOwbpnOk58M7esvTowdGEyB8GF/NINJOVfLANVOEXmsGBN
	 A4A+DjwnhOT03R3DftQ2GN1yW3UTur+H+rs+2KefCFz2GF+VOXmJPJjRbMs4eBFN3+
	 SwbH5B5+OCJavEqjn3EEqS7vfjrmi6qaIWi0WCqqyN6OSlqu2Xr3HWplLn3JvFmW2d
	 CuBxS/muCjNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B3CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003335368.24415.5790273742790419868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808bda0015e22cf675bef52855d7d8eb4368561b61a0ffebf3743bf1138f0ddf
Date: Fri, 29 May 2026 05:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780033353
