Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01AF1C84DE
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772691893; cv=none; b=OUx+j1FNnSLrcQEgRqKJ/3DBr9KbPcE5y/q84tsq5B5La9behv/hsv5lZI+LzwK5i35A0ztJ4Eu7ct5KtwxhAux8Dz4P16WipP193SZuZ4zMai/2fY+UFD49fXcEzGf8ErAn4A2sQ/IKkq9NUU61Y2liGURlsOxGJHM3w8nwPPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772691893; c=relaxed/simple;
	bh=KPd1EHjRSUp8Tu0bEAshI5qxCgPC1rE44JccZwySCWQ=;
	h=To:Subject:From:Message-Id:Date; b=KYM2/149jsZaBgvzsZueozrQnIPwCThJjMcd7nLUkDlwKV8CEdiexOChAbEDx8MXAeyvvXTmZpn0yfvKIsgdVYgTcK92c/F0CWJQjTbiSjNcCzZszHFYlbl5jfoecGbQZ5rwWvw+AKTjiDgMhW099eQnR+HEbj6ogkzlPaF5Apo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyHOv5Ck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyHOv5Ck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57FAC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772691893;
	bh=KPd1EHjRSUp8Tu0bEAshI5qxCgPC1rE44JccZwySCWQ=;
	h=To:Subject:From:Date:From;
	b=EyHOv5Ck4qSAFOpICBhH0DHvyXNmOIsirMgMX6FLHOXndqNVUnm28FjnFXtSTSrgS
	 6g8YXkciyl8Uju2zoo7jRTdyI/kCboWp2DlAYXiU2ap4N1GRKQMNdweYf3gLXvcFNL
	 T6l85JMgNK6RaRHZQ5yV/G+TIBjQWnTgroODJvPhyB6WSaJeKsi+osB6gbUXn1DsWP
	 u08sRWQIdCAbQUO5sgoaWP3DnYth5G8E9gv+h/RPSJ25zWKMExvJO4INMbSB4hHby4
	 /O5X1aVmCQLH4mYrYT199sQqxlelbhyEXlnUmA+nb0sOx1TCp5PLvCvNY4BI8BjN+r
	 HeEkPkWsPIJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9399EEEF30B
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269189358.31061.5376946497529835725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408e6b316670db03251295589b2ed0532b58b7867b84140a646f3bdeb0474aed
Date: Thu, 05 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772691893
