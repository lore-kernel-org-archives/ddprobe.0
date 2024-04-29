Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599F481AC1
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714404143; cv=none; b=RFOzlK0LRdjW8Zc4kmSIC8RzWdWAOSjWWadQWWHBI8tZlmZqEYa6LLk7WeCFt6sa93UK8b4/ESYIBvMLMorEDlXQzJixlkYEpEb4wwfSYZmwT1T6JD+RwX+7dBXT5YtsbEuCFSCfZpcawcXjtWf0w0ff7EUAjFP/lrDxUEWhQDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714404143; c=relaxed/simple;
	bh=OSkpTQrqBAjNV4W2Am+1MTr8lSnk2tapiVXkEiBpvqo=;
	h=To:Subject:From:Message-Id:Date; b=UY9eG7+Z8wHNQahWHdD+y2KzioOrI3MHGR5BQrhMQl+nvDbNjUDF3qMzwja+e/jSnrNi2u0A9w+/fpv7wg6ARLyhNzjijNjaS9D19wsqv9NHIefSW2ZMxzCTsWCV55pU2CoqklY8gAaD1QHHiUelx98r3wn6LfSxZmp9wkLJkyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnU756oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnU756oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D860DC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714404142;
	bh=OSkpTQrqBAjNV4W2Am+1MTr8lSnk2tapiVXkEiBpvqo=;
	h=To:Subject:From:Date:From;
	b=gnU756oqgD709JecBc8uWMH/DZXblbkKylMlCSer7HaAuacrXBZeU44lTtyXMoca2
	 h5YVWLkcaoM0ExfkjBETsGFKXMfN6MZX48EQNxWR7kwkSQluLy62kTdT5+DfRP8Lo2
	 KqOBGZoqmXKgngcIA9NEk3LGS6oJ5GcbDjtpY9QYZFLL6nQFh29KwMMf9DRZDJ/Z/Q
	 6ILptPyrcvRBFFKnoJO/WutBQ6erQZoswIpAO6oA8409pRSdh53OYJE0j2CA/Wfwil
	 uL1sVHaP+vb3CIE2YPdvJ+YWhbO68sBJ8bBO2Iq00sIwLjhdjpoLmHf4oPrwdbhTmW
	 OMjuefMweQzKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37D7C25B5C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440414278.23244.10244742489003825071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1816982536cef9270a5319fb4249208768c5c19024aad5d16e9ee994a5578fa
Date: Mon, 29 Apr 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714404142
