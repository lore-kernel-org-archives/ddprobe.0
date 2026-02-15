Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0784F29D273
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771146294; cv=none; b=rti65ZrQDIOzZRo80o+RhPWb1TIzfDtlA19YnYDIgYIm74g+eH+2p2WQViS+d3XICmuK8qjjkSMQ8Ipssa3sBdBeo1SqKb/GEbbVBy+OjPXkeQnujj3qHYGR/E16H/N+TatKenExxiGKHBRowrtVICPLLlfpicbhtsGeB5uUN5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771146294; c=relaxed/simple;
	bh=YU9Ubo/HbZ0ydaCFA91d56tIkvs97I8JNgGkbYyH8p4=;
	h=To:Subject:From:Message-Id:Date; b=LVMKhmBT0lh7RBzyVQpoBimjntRhq7LA1jRyeSnrAxQ6BbSjkIQJFIWwyvYmkNE0z2EVMy4tE7ZAjVIQeTgc6flhbMeq7UNvQMcHDsoE5iZP/xF+PTjGgH3hg2lZTJw1O/turel+FfdCaO+4APVmYAVS2M/I033B1TMo9p+Vzlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pULhT7Jy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pULhT7Jy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4359C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771146293;
	bh=YU9Ubo/HbZ0ydaCFA91d56tIkvs97I8JNgGkbYyH8p4=;
	h=To:Subject:From:Date:From;
	b=pULhT7JykysUqOKHlC7zBVgugvttWezVSsYJlA1iHfUekUwNnxo8ezS7jR9ZkN8GZ
	 I0BwyvJKkpPF4sN1H7uR+/PdZ1nCNY2VSv5EFijJOBtN3jyXerYgSQQJw/A/D1tSMA
	 bU20wuvHXEMflItSRbePTNckAMdSK30jBLzoWhVlDHvG4rPXPTFEE7cXtmBdxULL07
	 udfQwJ+SJ3/WpK2XX/QoTbVC7CHBNeLqWdxFJxz1NGKcX/dx1gS2uV3jrOQIJc8Rb8
	 N9WTEPp3AMZsVWnZH9dQfvoisatF39rRGfjztDkIJdChuTBlT554XyE3j9L1RIQxIw
	 QfPEw52oa3iTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA1DEF586C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114629375.13144.10717174200710089638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a162b3849df06dfcc8371597e6da77475f3211a1385b8a0c2a890116825deb
Date: Sun, 15 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771146293
