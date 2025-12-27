Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E056283FF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766844234; cv=none; b=Eiv4B1nqdnZF/Pq5HACimrGx33KRjFIBums0vD1NPsRcuJ4CRQuIGXbG4Zx+mkFZYbkMHOFaAinmR32NTUu5Y/+WLtURz5qE5dGrMwsS7mLczMca1m4pCrSfH7gfWgi1We0871noTbjQUmky0BNtgRDhSMClK46jkJHGIe8yb/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766844234; c=relaxed/simple;
	bh=zu3pBy++8TJXAwpSs+pgey64sAKNTNGS15Kw3Q6Km7Y=;
	h=To:Subject:From:Message-Id:Date; b=XnsRnp4bOfvpsAPo2ovg1dy4NHa4NiHT8CpmZeFYSVV+FgkCjoNnXbbccVlcEk1F1aVssMLOKCll8hiXuaUelYn78Fm/zw7n9BpDsBL+5Dy7YR/2AJqLexFVEkiHQAp+RFH9qbNUZiVSgouuxmEFdn32EmymyqAsefsk/DadC8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRBmWeIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRBmWeIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36B8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766844233;
	bh=zu3pBy++8TJXAwpSs+pgey64sAKNTNGS15Kw3Q6Km7Y=;
	h=To:Subject:From:Date:From;
	b=IRBmWeIndiH0ZgTUfhbpN3TUmhALiFSi42KcS0277IeYQ+iD1EkOGGvPQzQUez2Wk
	 Se2PCdQw907zYFtkTkQVOjrpPBZdwWXj281gfboCMXJrxIBNrdM6EEsBIDhGo7R8wH
	 2ekYiGEgxv3S8VmvEhst7hBYqnkeCkiDVFNNOqCaXcZYC1BUC3QZBZqX1QIBEZIY1p
	 JLoFIQ+DYJg8xkIv/83bvWgrYPDNTPcOs3ZLaldAuEAB9K17anjdybf7EJOOFYH/qq
	 iMDhMuL56yAItcmEAa7cMov48WoQKyhOlR9kN8bVlw6oKAw97T9Op5IPwGlfG44cGV
	 XzlX+QVI6nTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3EE5E8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684423361.28738.11593676957191841868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873192c22a7c4f6ed3790e2e8c94fae9c38eb7c40e639dfe4b0d66b3b5046a6d
Date: Sat, 27 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766844233
