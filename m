Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40467390C9F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785757834; cv=none; b=cCeXWM+803D/pxxKAhl8pDH/SaLKIFIgLen3sZYqsjJO/L3Z9KulMUUcqOs12nJjkiYQ/mvXFh/MPmeDoLchdvbTvERE2tpjAH2jZqWTXkOxG9HoIeJ5IY1xckB7veKdn/h0Srq+z5UYlFBspEyGRO9UyuzudqKmAcUCXXeppL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785757834; c=relaxed/simple;
	bh=+AZsytuXm+JVYMd2Jc3z3+DP1ejWOzwgbpaee9HQQDA=;
	h=To:Subject:From:Message-Id:Date; b=Ynb3b0djAPq8S1vHSy03m1mb8GmvIxYAMh9aSk3FfoT4CgSJtZBHHVXaBOj1USr7cp2UM2+fmqTzaN0TYQRt0TjTJQVK9qWqTK19pYhUOno0wysHwqfA0NQOzj35h3N1h8CohDiUtbrPR6exKHBFjqyalTs727Q60ihRWKPRa9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBY0+r+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBY0+r+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF836C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785757833;
	bh=+AZsytuXm+JVYMd2Jc3z3+DP1ejWOzwgbpaee9HQQDA=;
	h=To:Subject:From:Date:From;
	b=dBY0+r+tyR7/AKZoT/RIrhk7BnnTG07bsy/IxyOfZQxcNuvINBiXsSyqYt1zLqvLN
	 WKf2u5O8txL0l9OYmidLSQgq47fVcio4J3RrsS8/4Vd+ROJ7M53LPqbxPKWn2oYCBt
	 QYpEhahwsYKMtT0rIRxrOiUugoPSZjjNDOOHWNyyoJR1zAlbM6Z7zJerG1fbhY8XLP
	 UfQ+TTrmxT3tQueb2T8mzgIxChwhbI85+taDZQXfZjxvoayNoW4MiQRfVNdeZPrnhI
	 wrKazvAjlw4zBS1Z+KhfSKRrdaDRRrUsYN/eUG6vVz8II7UZJyQtfmY6A2kOq+Gd8x
	 rJ+Kyk6tu6nWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC858C55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575783369.7732.16684635503202744377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b87e3e6e6c0fd1bd25bd74235593d1eeff18723cbbbadd0061410197e4cbdc74
Date: Mon, 03 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785757833
