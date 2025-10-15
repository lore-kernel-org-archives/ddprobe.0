Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5BF26D4C2
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760497195; cv=none; b=hts11itzfJQblDU4BNgmzc0VjTzm5B2NufuEhXadeQ0zJb1IFOeJ/HcwEnCjBIExA4UysAG3eydQguCesJAceUXwOwgGrJJ9O8Xi0enUBUUSo7a+m7zcyagZsOJ7+1Y22UngbdIcGAyOkj3K7PXpJdlpXeCO3kfdIJ4ukRD1XIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760497195; c=relaxed/simple;
	bh=xZGyCKC1QWf/QedQiGgn3231lGUwYrtDqw4kzn1B3TE=;
	h=To:Subject:From:Message-Id:Date; b=H3BvmpQH/o2e70t9XiVRNrU5cUYof7XGAganOAfAeoVmX28W5XNd+dRoA6LrkNrZDCH3ltGFHvVNiGI7lwy++GkggbuxSVmkrd+wTImwyDNLQoS1tigZmyt5+o9jfToM/8fDtqc4b9nqNombCqVMb6mVj3GZtoFcKnirIz2Sqz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTgZHTsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTgZHTsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760497193;
	bh=xZGyCKC1QWf/QedQiGgn3231lGUwYrtDqw4kzn1B3TE=;
	h=To:Subject:From:Date:From;
	b=XTgZHTsplGjDkbS+7/JgX0Z5bqt+20ni4uxHXZ35ToonFAMx/Z/hqCw7cVRng0yzS
	 R9TLmVP4d1xRqmDAh0S1R+KFN3QkXi47VmS/aPM4Nv/OGSZiECQTQJ8tgViI6dPrTn
	 FFJL72LKg1pfFHzKiTJEgzbZLkxl0ODQnxoVABqajkC68wtOfZGEhMv0jWJN/5XQAW
	 eGMTp0IgD/zIWX0eNwIMY8GlZ5OMtF2bkEBo2VoQViSkckNIHiX6GyE6MlnSeWL9G+
	 jHwVhBLyzueNbP1i49+kviIL0K2LEZlPoLrZ494eodjsX/39WszOlAVTsm+cY7Z6o/
	 BKYR/V49mleyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D3CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049719358.3151.15525570483192167325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18d6f6dad9167e381e69e0d48c185b9ece10d81d92aa897e2975fe1853aacb4
Date: Wed, 15 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760497193
