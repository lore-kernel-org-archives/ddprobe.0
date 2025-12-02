Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7352F6184
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764672174; cv=none; b=eKAkjKQREcUwCDCsVRoBZkNioXt0nojouVxLw2zt8lHEW69zoa6xqLU1iZdvahkwkGOz5zmW+1i7X/OEOl8bcX4DsGmkdR+8sDuN7c1e5bZe39JKVTfMNEBtQKD79oGHix253tRlibhz5AVUwzwYlaU8ZK4ZMpD9lDRoJHcoS7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764672174; c=relaxed/simple;
	bh=GE+kRmdcbehNRQVaOU3xXLMs+UEPJiYxthW2ayqEvNw=;
	h=To:Subject:From:Message-Id:Date; b=HakqGbsGd2L927GOmvwTJ6wsHChOHVOkPXv2JUMF0SGfhbnJnxz3KwQNeM0v8GE7+hx1B6eIO/d73tl/q3BssXS3lr9wHVBwnJh+ABANwdYAbZTlnWuqsvZEUBSIy9pdRROtsYxe8lrPK4GvhZKHTJMubJMu8ciNHkkGRcem+Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRz10u5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRz10u5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B1BC116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764672173;
	bh=GE+kRmdcbehNRQVaOU3xXLMs+UEPJiYxthW2ayqEvNw=;
	h=To:Subject:From:Date:From;
	b=bRz10u5ltyoHKbUfuyLJvBHC3H4ODB15hp7EcHhukcJcbxqKZohJ1rxWOyYolSyr7
	 BkY3VQ5QYUXVsx6OHITCxSrulHI+1/Bfip7d+XXItuekjx7kttElVpsIAbe3AySlVF
	 /LwpvvfEX4m7hGkeUHoOnYwqSsjxci1LHu5DaBaOACKJUTyFL+TFnIXrBEFTsucTfW
	 +zKmMBPZxW2bV6PSIS522yEX0xDLvginl7Q/CB8pCfjQmEMh7WWTML6tKqMTjL+wPz
	 VZgoFoovDSlJ9XQy136epcPJMhkW5fAufU7L7pHjGbPTNNo0VOvb4ziwayvTa35EFV
	 PDni/XN61UJEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9366ACFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467217359.21734.3475768814286821588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3774a7c8d7921a9d8ed85096fc2d664fa8a58bbf5dc878d34092f1a4778e295
Date: Tue, 02 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764672173
