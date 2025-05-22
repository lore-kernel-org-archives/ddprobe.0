Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EFB1FC10E
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747947594; cv=none; b=syDg20NaXDCT9zxLgQ4S+nmxyX+ERL+dlgEp0iVmBd+ksfSt1vCFRYo9ChRW3n3r3FRBuOO4Zt01tTLQthzOONpeDuH1/+orptIF7552SlTU7vV8g102D5AXs0ypRC0vywkW1LWfUNQZIa8RifNKR5MLibaP3A1R5YqZKBjyxf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747947594; c=relaxed/simple;
	bh=JIPojW9OnZ3eZMoiHQtO1iUEDFWegn5T6Pp9nYytTTU=;
	h=To:Subject:From:Message-Id:Date; b=OR6uy43998TcU/pT9AfqMxIwGnP8x3Yx/BUgs9+6Gkd+YBYeyN1xu3EYZaq1GnWyNtjkCZtXjr1eBEl6OMDQJKOk+kRS42Uouhpn/ploOVj8sRqunReYHBRWvyIPue636naInM4nzfa7vAxrzGbW/wGZVowafrQ1dM5Sa9eJPyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsJeURqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsJeURqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B337C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747947593;
	bh=JIPojW9OnZ3eZMoiHQtO1iUEDFWegn5T6Pp9nYytTTU=;
	h=To:Subject:From:Date:From;
	b=BsJeURqkQ931WUur96ORZSB99OC9xSDDDmVI1BmIksupyiEBIL9G3DwtKDDwXXiGi
	 28kbhTSuQqOW3TDPtDvYDfwD1IQ5GkIGQiEPQKgOtMh5z6nNY4hmr8leXdf/ucIlGp
	 JdU+57iLdCVSAHwj7yJHlOtaSq1KXQLm+c3oZ8QehJjmR/C7/8T5+cc1rWQTZxKKrq
	 UXs+hidO2kshkqWz68ZLyj3qcy75/2l6hS8v9v7ln766+49okWE9K9rDVn/R3m3zi5
	 yShYiDuZA30wiK6vV4Avt0DkvmLCi9wLg3ga6kCAY0RZuJUR+jrDNOygCDRSTg7EYy
	 yXK1TXOftYAsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9BBC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794759357.18606.2513714200754602646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c44e1f038ca5552847ad050ddf962b1d2cd38eb948e262b31952ec4eb805d4b4
Date: Thu, 22 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747947593
