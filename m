Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D40C25E814
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745593194; cv=none; b=RylqHpCdfQ5z7AoCr32WPVRvgh/+qcB83kt6Ej6JCarN6+brIGyiE3hcBTjdRGaqR3MEmcs32NFsdXV2w1WdbmY0MgieBoF7/yla4zA30PPN5RaYRax1HrsBIE84DwrMhvEv8zcADafEYVfxkQK5KK5D+3uBQVvL84pSQ/0iTaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745593194; c=relaxed/simple;
	bh=RZKAut/grlvX2LwJHXXp42Uda6lAcILmBE637iUP8UQ=;
	h=To:Subject:From:Message-Id:Date; b=VcAMpjKutSzk0eJOZw7C+BrnhJkz1fOjImwB8BFYREmYaJCXsfYdvvm9/N2hcX8E4Fk0VGKpibCNmA9Aiki7FnV5UAwIFUXENb5aYrvcC2uE0L8ySPXxROwGJxCgeA4Et/8AqZA8lE4SdkHknIbz43AXl7yjFnSZ9mp/wmh0B3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDdM90bI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDdM90bI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBD1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745593193;
	bh=RZKAut/grlvX2LwJHXXp42Uda6lAcILmBE637iUP8UQ=;
	h=To:Subject:From:Date:From;
	b=VDdM90bIt2T9ow7Jxbzbc7XxZvV9NwqLwPWk1kv1nwRr2oUbXHYmSBSyJc9xDnJaq
	 en4VScUR+OCfm/AbFWiGYk+soaw0FwsKvsTn+NKGuaUI48XbXkE5Xx4afOFGdvAV1E
	 QNOdTpWil13ch/ExWJWfwJSBdItdApiOgh+gssQOo1l2muW69t6M75HIysl2JxSTkn
	 sHVTwZOvXIgiMGB6fqHTtdycQWVdFcl8ymjNegOpOazgyyQgQebXqNsEpglgMfDjmB
	 kTKrEVdz546ypbVS3xbfgHNB/jYjZ3awvhS7sly2hayYfV/qRxrDAbF2In61najcSK
	 GHrAFmbI7Jw3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8EC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559319357.8561.13051553158966970241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac51868a2be95f6a56b52eb4cfba706ff2a4160b642ba033f3a0cc28cbd18ba0
Date: Fri, 25 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745593193
