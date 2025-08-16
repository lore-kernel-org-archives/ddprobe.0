Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D77C23AD
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755361795; cv=none; b=pnf6oGNP48/bBbk53ErzrJXwbPyakBrlvhhUNbvYRy1mX/r+8/ip7I6iTAN6Cc0bndKH609B+fvq0swpG8EcgnW4LEKF+lnFy++HSaMm5cLhap6oiM/kslsnbY9QRRUJCg55X740ITJ3N9WDPJTr0D083dJZGwLsJIUE3H7HoT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755361795; c=relaxed/simple;
	bh=YKhjAfB2sze6GUvYxnw6DZD6jIytiOMKp2U0LFAJAKo=;
	h=To:Subject:From:Message-Id:Date; b=QE8vpMaFVuP2cv2raE/kB4gSmaq3xkBK6jE+GHG75w8StQQh3Xy7Dl5iRJXmOBj9cG7P67X7qn3H8XIRRtiRfkjJSEXL2U6IDsIOfqOtVBDwo3vR/4P4h59c1SQHVOTbxlDoCYy6CVpVmEYhy/E9UdX9WJx9lPX/2CNXRDVMaWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9p/AT5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9p/AT5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B0C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755361793;
	bh=YKhjAfB2sze6GUvYxnw6DZD6jIytiOMKp2U0LFAJAKo=;
	h=To:Subject:From:Date:From;
	b=Q9p/AT5EXxHJ5R5X0VhoFrjxG1AuczgiEjRZ0iiLoMxqtLlUZHBnExmtCCuOPspVk
	 pzLZhGuCghKuMso6pVLGu5feKd7MT8gn5JVW2nW0gbP85JEsEWMOhnoC2YMf3DAqww
	 TkazjwZwkircgAz0VQXmWXAWpFvjbdxYVNhiZuj8hAeqIsS41Xcz1Cs03s9PZ1wkuq
	 /XWBRwBT0CSbrH7ncXXw3Ma5C6UK841wWeL/kNyLZx6H0pHH/f5ErongClWnhgI9w8
	 c2AFJBs3AAbkePOrBLbk033kCiuHyiUfyonTKHNHJXCUSdr/H+VZdpi28o00zwOcLB
	 YsVoP/eSTg8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91069CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536179358.10831.16956705779431766014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94904d28c8586f062ae79bfe03c934fd7f02e7d8e18353b9375d2ff065bfd91e
Date: Sat, 16 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755361793
