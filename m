Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C0723B63F
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766913234; cv=none; b=FHyF95Sdu6WFYrW91rpXfimWzk1gFHtRMj6Q5TSS6a7Bd17KCY1JQjt+2a4gidH+zzN3eRYrUQnqbjL7oK4H7DFky49cBSgbC26XHxf7nuvTf2RSiZEJYi9tUnVs9cySHcUE5z1wNC7XXj5OTTfwSoMdgZEkFISJyrN2EA8cX6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766913234; c=relaxed/simple;
	bh=Le//GXT1F9tzlHcJ2vTzxmSgsKMkk4R/F9oCTDNfwSQ=;
	h=To:Subject:From:Message-Id:Date; b=u74XQ2OoC766T/8jXByhOAOrWXyac3Y3wb5rvHugQEsDybqcxMg8lJ2mp8nguVQ6koBkjmlcJEAQ+1yk6RfEGvJn0c2TMfCPF95wjQvLAgtxzOtLexSU0IwBvofLqk40Rj9XhQ62+fjVEWX7Ej4PwMBP6gZJXfJnAne0o84HjdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7Tda+8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7Tda+8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3016C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766913233;
	bh=Le//GXT1F9tzlHcJ2vTzxmSgsKMkk4R/F9oCTDNfwSQ=;
	h=To:Subject:From:Date:From;
	b=u7Tda+8tQ3BqjaT2cXBj9QZ7SW9HIRYwUzRhsiZ6U453DeM2TqYtqhFe/s1ZorLgX
	 SOotbtCubIcL/BdzTFOVpIs5sWL9oh/z8xz8qz32o3AJ/a9LAgeSPVn7NPzKdQj+QT
	 0QbMWd5viwrKSPcLsLbzMLh1e3Av8FNngP0lph5Xrerv4YXp00qatQyzKfmZwv57Dh
	 C6evz9TyQVfftRuP4iyF/bpNUm7k9jppF/JgtxpZOCFQpv2vJZLstR1TY9YFCrm85w
	 zU8L5sZGDqDeSw4oxl9iJ3XhYY0vlfp+rVeI3ZiFoDMbsqGHSwwTzwGtlg1ySJ4uIm
	 Q6XrIxqH9rybg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B49AD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691323360.8339.15091100238096359766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a569313087d6bc9d404a95e1253840856b399719f5c1ca8731f5e36eb7cdea9
Date: Sun, 28 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766913233
