Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E14B411A0B
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785767434; cv=none; b=rsXCbjFKYZLxNarwABpqYYNzFl+hDWk42468GwQ1f2qUyJu2dQSSsEkrVRxJ0P0T+snKc1LbfdsZHIOr7V27y6b16X0t7vPFkmKbXGEMfJSsLxlbg1X50yM9U6w2xWwglhodsLVU7PGPd+tT4ZBmcI5NopRIh4og4GxKOs1v0+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785767434; c=relaxed/simple;
	bh=gLqjTtrVEZVGnxGSCZpWATT4ZaYDQ4I8Ddy6/2ZIFbo=;
	h=To:Subject:From:Message-Id:Date; b=kWaUW6baXhSlZN68nNWEB4hDZyNWLoIJ1TcBsszThkKCQmiifT9eKBOJgVZn0tKU/i11w/z/MboRwKU9eVvYDXvdnISMnlyKVBYZoDJfGDmRGl/QS1BquwPe7yua5hzTEwM4JqqaJ4sGq5mrxG+D7gsJWuUGZs3EqsGu9Y39E38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMsr6w17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMsr6w17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6FFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785767433;
	bh=gLqjTtrVEZVGnxGSCZpWATT4ZaYDQ4I8Ddy6/2ZIFbo=;
	h=To:Subject:From:Date:From;
	b=cMsr6w17tIWFWbmOyLz5PAIg6S6pF/jrtX+l+BThdGJlRjQV3/uybd1cn1poCLAYX
	 cXkRnET8Tz4ZGiDKpyHfJO1WLu0rmJVEHGBWhKZubkp1Ue43rmZKRT5zwIs/QVKhC6
	 tSaznvQkOz1jofWlz/lLjK02m4fpZ5m2cfo/qkoVSjlhNcn38DFZ1EK1KoaZBT+/VD
	 DbBewM8X007lOvml+C/sqGWeBrvqlMY9uFEzjNu9c+9L0gTKdjJ+vUb3nqy69QlRVs
	 7JCbawL50v48QACif8AU+8gsvfR08aB2NCUuw6/tXSC/jcUcBFZqJfa0RXQq6Zf/IC
	 uAatwgqpvtyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D5C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576743369.12373.14370735937759637433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ed045c40289c4fef0463ef7f7a52f10ca1482d3e42bcb43ceebfc56e599d2d
Date: Mon, 03 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785767433
