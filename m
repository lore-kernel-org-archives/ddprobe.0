Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8906A34F
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709300897; cv=none; b=iEhcrbyVBUnWhPjdbJeYa4DVlHpCnhSugw9jfdVWbQehGvJkKO5v1cDT/902MLNjr7uJGBu1qTnVqw7lQ3RFkVEaOz8tii92eLCiFtlIOAzbm5/5kzhb56Ef5r5s6LEPRqncPiQ6XQ62QmxQybnw7hSxNfe09rR8nGM8o0GA83s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709300897; c=relaxed/simple;
	bh=1WoAOZVum3kGCsck/iA/Tvwl3sZZB+rNjquoGSzjuLo=;
	h=To:Subject:From:Message-Id:Date; b=s5/JUNktN3DNXnPYFASx//bPudoITm1TfFcknJNxE9c0S5zsLaIlMbNTPVhPLpM7XoWj2Yiq1YNJ2UVhsai5OavoJB1Y1rWItwZ5MsSg6e7KnpeF3OQ3KK5NYiTnWNx0WeZ5DCgmOMKNUZvCYTIy6Ar4aWN/cIrOVO5yV3ToQJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QChOTBS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QChOTBS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8310BC433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709300896;
	bh=1WoAOZVum3kGCsck/iA/Tvwl3sZZB+rNjquoGSzjuLo=;
	h=To:Subject:From:Date:From;
	b=QChOTBS7zHxEHsn6VcF61ruwvN0WX7BnJ7Y8w9cbL0Ha1C6561a21VH0aO1dlKaXK
	 8TCms4Rxsh6W1J0bRWPCat52WaZPMBr38ine8OhVVbzOrWWoqLd0Q6pmIaNZHqGsbr
	 G5BDLpYMxI3vd9MuYJgIexdZ/pXnMEbByjRQIHJgWKiPVCVNz3wJeb0dArxG8UmwV2
	 jJchOJmU32tYg4oPkhwEL8QL/MFFKhqdsN9/9a4UnKmav2jWrSYngtKgDoek9ssNSR
	 2p5rTf3PcPFzp1Z/+ZAecRrwmKqxx5PadTCcRo0dwpaP1xkkvG5LDGO1cjNK9CNdbO
	 GdBNJPk6KCoFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64323C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170930089640.18834.180605737177405231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bef6e197f7344bf5a58582bf635f7e8c0256e1a4b3577b84a5d7f8ef7805390
Date: Fri, 01 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709300896
