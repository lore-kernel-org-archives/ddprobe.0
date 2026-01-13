Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAD934AB12
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768275234; cv=none; b=hg3hGO/DmjZbmUSL4kjbPOk9LIrd5oxuDHbjsN1glNprZ9zWh8uEhjQb8nbr9K1StomxsxiUhoaylXx4or6//pB5FfemYpPtc6J97a+ybtxNQ+X3A4fMAJNiWTUC2JQ2lmEzQoUz7izOS4cDy62ulU/R0F8nwpV4stxxuv8xK6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768275234; c=relaxed/simple;
	bh=PMP+86R0+z4eZOJOIOP1Hqf8S8aZ6FR8z0DJH915OYo=;
	h=To:Subject:From:Message-Id:Date; b=epB46fw6ONyrodvkmhFUywhKRmpnuT25nWb+fwtUaYlhYNqfJXQF4UIHGHClAfDqbk2brauYOra9zzRq6hFHAuRYW5Wf2aDVbemeMTWr+WXhdxNtr5JC3QsNsYqREwoIwcML8FbKKnjaySXeHhcY4dVVYT/vd6jeym2HeUcOj7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hh66yYr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hh66yYr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8AEC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768275233;
	bh=PMP+86R0+z4eZOJOIOP1Hqf8S8aZ6FR8z0DJH915OYo=;
	h=To:Subject:From:Date:From;
	b=Hh66yYr+BIAAcfp25EbIK3ALcjkhZ7JtgDdIjimowYIhkv/HsMHslnm/HXHPKNjZq
	 zh3QYldQuddrtguZZ+DIjrfgYc4CR7zJ8Vf1EM20IWf3kcYtJFMUVVg8n0zYjFOKy0
	 gPDNYT1j1+mKaeyjvuMG8L7N09APuDRsyi+1eXu0PAMAA8+FHwyZG0/odj0LXuQz1X
	 O8Td+EIvx0+ZoEtS3vtmRCpIT44e6g+AHd+LG5g4Ui6Wxs1xp1apNWrqIW/KXsHJq+
	 Ck1Y5opc93valZugJEddqpMsvZmBUXJDk5Uw+1U8s7zfnQib6bApBDRJlIFRS1UWPW
	 W7naq1NUIPAzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A00D29DC8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827523359.2950.8069378054254098484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e3232793e923d2945d9881ddef7bc00a0c24f8c55fdf8cc97a0ffded75569f
Date: Tue, 13 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768275233
