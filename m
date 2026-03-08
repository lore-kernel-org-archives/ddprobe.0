Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F3E335540
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773001494; cv=none; b=WrHPzwUcbplIROFsZvKQXCQt0DMhP4moUfFboDv608vNbsz3yuGqNUWu7ImFHBf9ZaPI9bwGn/D7Sk3QARmbfMSFtHK0umOKJW6wmsIikCnNjxMObWxeAvRIX61RgPxXZn3BsZ3vCYkqFgUyK06qvCQ98xPc8HSAEb8W+wInXWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773001494; c=relaxed/simple;
	bh=XXOBksLg243sAaNkX8367v30CJsSh1380n9TJGg5rv4=;
	h=To:Subject:From:Message-Id:Date; b=OFBIso0yJNUPGnGPEpSipEJ5WjK+egesdoDHAKfRMDoetnZD2bQljy8pm1L+luCJKJUxJsGuVEB+28ni20kmqlGOTV9IdUHAQZlgeehJhl7URiOqmRhR/PfWOkNeQ84hZHurHAF51UCMt7Cx6pUcTK+r+VLhP8agAWlgGz6IQGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkwAGBNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkwAGBNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9BBC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773001493;
	bh=XXOBksLg243sAaNkX8367v30CJsSh1380n9TJGg5rv4=;
	h=To:Subject:From:Date:From;
	b=YkwAGBNjYoyuXXRR8+dYHtmOKXAqnZMdW9ZVNptRng6Z5Mn/3RR49by1aj0x1VMos
	 GnvQeO/L7vtuL92vVucOpjWBUBGfDmw14y4Njz/6Im6eRXh4l2Qt5BIgM5CZawfAT9
	 3fAW2YClD3h+czE5MpmBtUbrkkFBpRwJj18U1JYYyqI6RycyYknJ86tY9sxDbSrFAY
	 ZlM0vQ+F/fCAPbl871RfWXIrYLiuz3p423b5oRhuzUfe1LmRmwN9nspC98gF19c6KQ
	 0S5pglwlzXdCL+aHlAuEr+MnQuTxkiJxlJSc7hXmZ1GyKvQtMhJN5s19IFzVYRPljW
	 IDgHJ8c7ro2/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9970FEA8541
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300149359.22175.10972263360271006614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6fc818fcc3a7d0731d36d850e906f214fc261c2a33a423415c96fcf8c5d879
Date: Sun, 08 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773001493
