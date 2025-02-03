Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401E12111
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738559154; cv=none; b=H9yFfwWIPMiUpOGBUU2/9l7cBhjmkqTzoHNKtyW8TDCTHtdkJelpr8PrJYf4SehQ5+mTb1YCmQ8Byoxdj+gd/LWZdWS7SyIhOVSm8pEuxOu4rHglkuAeCJGivgqa5Qv3HGGaxt+Y9gRM+jMlYHJMv13uOhLdWQs5LWYxzm2MqCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738559154; c=relaxed/simple;
	bh=Q5NPAPN3Lhb7slQ78eS+UECj8E7Hfl4wMj0C7tKKbm8=;
	h=To:Subject:From:Message-Id:Date; b=WTIfR7Z4Zjr5BmNBVgC6AjD1ygIzoW8xWnuSZ8GT40P3ovaLM1DrROfN8epaoGknmN0ogBjO7dJKQGaAvBgNE7ta5f3nhs5DMPCVkIavUS3FufYIjrpytMzLcSWEIR293VZtwZuFLEAouHJSZ3elYnVIkQKUqxCP8aitwXe+494=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEhpLl1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEhpLl1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AF0C4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738559153;
	bh=Q5NPAPN3Lhb7slQ78eS+UECj8E7Hfl4wMj0C7tKKbm8=;
	h=To:Subject:From:Date:From;
	b=HEhpLl1vGaJ0/2tSD4KiWku5bSaPHKuWrInofGHsFQ3lXe+M+csCpjCYF/wnJRgyg
	 fjtXlMpGSL5+Qx4kJczck33pr+Ic4ZLbYyswbPs2Zjsq5lW8HtRofgYWgpX+/IaSXX
	 LyoG/mP/IldObhnv6mKNB+9Ov032iBPXE7wUoYqp1zx5p9xGdpCtuJYJDaBhDTBDVh
	 DjpRp5r+BwlmNRKcPoUPrcwwHRYcapje9WK+W+9lVtPVjwpZ16eobtjxigVsdbw3CT
	 edIC0vv0khUhuZbL3Rfky1/725U2+pG421Fd/WEsFq/5mct7wZeHPYxpWjPJVILCi4
	 4rpZB6RVZqaEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948DBC02190
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855915360.11077.4545948262065465180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab34fb66b6188b7aa2b89baa3823dcef4d84515e0ebd11585f9b095cd2384541
Date: Mon, 03 Feb 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738559153
