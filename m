Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169A62FF655
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761930594; cv=none; b=P2ZsRNszji/ACCWCU0SLtwxfYBKs5rea4/KTWoOKbY+v6z+zcK/tOIjG7vSoDt8474BdARp/Ok/YyDUx8xH6Qm7IPW+H9gPDqAW5ZNqJC30IU7A7cgRLR6q9xa3BOF05DedZLce2Ctk1xG/iz7HsPv2gUwDBktavP5n88g+6kQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761930594; c=relaxed/simple;
	bh=L3m+aMPf9XVJgf+moaTvXpSAXtAP9WiiQwEtaadrGgE=;
	h=To:Subject:From:Message-Id:Date; b=tGO9+xCvnkDdRIsam5drsvpQt0PKWVzCYb80ipcILjMiTCX6mGNrAdUjDDKWW+bdeqciDJWQtJiyYOW/L+pHtOZ3wrlFJCdz1uO6SQrs48cZxQ3g+VJKpxWqZHoLvPYPYq3ejpWTEGavyyV9Jo5pFNybX6qSU2pvmS3NNHfB8vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ7AI67r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ7AI67r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90BFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761930593;
	bh=L3m+aMPf9XVJgf+moaTvXpSAXtAP9WiiQwEtaadrGgE=;
	h=To:Subject:From:Date:From;
	b=YJ7AI67r/ovpbANbINm+5PnvDSfXJFKM7qJjA6H8qHWzcUIW4HXy1cvX6MKESa0Ic
	 mVp5XN/NdTSMmMKeeSW7K1d39G3deAB7Gw4GkIO5hcuj36EuLhDaQfANByM3tYXp/6
	 7mPmL4TqYMZbaf2o38wTgq4YZn8najUMlbHuTPnJibVdgWQ8pBKVlIy87VMGjRVogk
	 e9deP95aMc2Wx+sztXQdT6raRPbLtJIUP3PvVwVFtyEj9ZLiQ6x/BHa7I7ACHH6RmP
	 Oji28vTBDKmzOqPvAn67sxVwFNKGa6zX/cHwzODJCcpL+YkGB58BjYDtPMe9Xy/Dl+
	 dMH5V4PyqXe2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC0CCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193059358.23312.7451497349357701234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3371a3e20072ac146f4c37fc51ef70911ffaea0c5ead6aa39e0910857539e98
Date: Fri, 31 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761930593
