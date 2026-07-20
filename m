Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D05839447C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784518114; cv=none; b=syrZaAfB8llLi1aLAjjfYhLzZoaMpOM8eeJa4qcorjBQnb2iUOIvYOfzszvjt2vur9sKFqWXnpD/lNhFStuiMgR6A3Dd6ir1hukxoL/erOykkMGsqwlxXAMR+hBZ+4Mf4kB0srFqXNgDMFrO4ojOVXN2LIjoTsPuCEPtHZGjHkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784518114; c=relaxed/simple;
	bh=nBjxqQBzyngBdDfF5/xEEBjFFbu41xJsFWQHOvPfDDo=;
	h=To:Subject:From:Message-Id:Date; b=oe08a4Fw9rINloW9R2VuvyQeUCuznYRXcRdD7IFnsRZV2sKLYBptz6pfDqpvVKx3HRYk0774TYMuo0GDi+alOZeR06O3BNOpzXq0ww76r5FDd4j51POOD5zT3A/yVgz9lnyVfD2rrmyCzmd3JvCJKRQfAClq2nl6hMhIx7V3ykQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOFDZewK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOFDZewK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6331C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784518113;
	bh=nBjxqQBzyngBdDfF5/xEEBjFFbu41xJsFWQHOvPfDDo=;
	h=To:Subject:From:Date:From;
	b=iOFDZewKd03ya2fC+16ioYw2myOCm/OTCXF1P8lrHnBJaiqFz/o013iufItUOXz1t
	 ssqb3MtEHwqM0KPi1i2v5PdGdtpL7mfsp0JSRx8mpRDu61ELORAbAs8XNmzNrFxjCI
	 kamnYkRwzb9wqhhpq5NMI3DvN5Q5cRV3RuDJq2RKGwnNEiaeyUSI2Xs5r4Jxg4wqbO
	 G0vHcz0/Vby6Ul1JmuIMCYx9JbJ57+4+g1O+42qWn47KZ741UpSrzmj62S8K9XSSCI
	 9vSuauN9hhaxhcPuXi3lFZrgVLO4BUZgiz+5poomyxxZdMYe+n1LClifbCIFHX9wtY
	 SNw7iZR0YdK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF95BC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451811371.26245.8182480843385870897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b36c14e982e6c528b7db0685f09c638b32887711023ed740e4f037f49909aa4
Date: Mon, 20 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784518113
