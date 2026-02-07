Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA21D5CD1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770467034; cv=none; b=MSiMt9JgtHJKnH2/8V9jUp8ySQeir1QNhiFJdgfMShD1ULMDNrvjUxATzpoieuODKv2YdK8E46i+ZqnKxrYkW2W6R/1nF0FEJ6oUl/a+m9xN9P5EQYe4YjccqcPwvvaN9KXmhe88FAtwxH7Q00NmIRxFmg3Op+mL/C1IACyJNfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770467034; c=relaxed/simple;
	bh=fPgfOtGxd0mzzN4Iu2YIkYnNEvIq+BO8zlgKjm5vTXQ=;
	h=To:Subject:From:Message-Id:Date; b=D3vHg2d0R97qmKjgrd6Amc+wKNG9DtAArxtW9yVM1sc/za2KlpW0LoLEIeq7m1F9daZZmzRFOS9avCbpZUGtKQ3cchmC+JaTHOn5z45hyz6apsI8kcBd1EoMvPkmjfcpl13pkHPA1MXqddb62RS5q7uyB68TstdQNPlZYgnDvfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRbTCtPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRbTCtPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D49C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770467033;
	bh=fPgfOtGxd0mzzN4Iu2YIkYnNEvIq+BO8zlgKjm5vTXQ=;
	h=To:Subject:From:Date:From;
	b=TRbTCtPK/HADSbGCS8Zm6nsnPLCTRXOlqOZXVBI1HqBMm3UuB6V6JQ6h4pPAqm70x
	 kM7rPCxQ9mSgBRVgY6RFGM+PIA3MjzL5RY99V6/bXvkp9TDMh28GKoPtfEgqq7Rv6V
	 AKOAnekwg8n6NTZ7XCPAx2JrmVFwxwDflxWkfs20GiA9yFp3Nb3MY7kegw50sd+8ue
	 ADqzE1Bq3Qf+es9crUGl9tnm9oz0JN4ZHZIjVHy5Aks4E9omHMQLuj8QWWaXTKzw7k
	 qkslhanVo7yFdlXHrDO0E54kNSFrID9CkieouOAjqo8iPX8UEGG0rBc1Y16XAFZiXZ
	 fsKzoPC/ed/9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92652EE0ADF
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046703358.12457.7010166366048565620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7682b95b6d6a9920c317c25b9e1ef7a5c18ccc47aad31f53316eb4264b57f1a6
Date: Sat, 07 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770467033
