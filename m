Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1438319E81F
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761570594; cv=none; b=KFB42ytgsu9vw8y1kj6+cthTj/PgNr4OwUk9y9AzjLc5bN1irArnABgux6+46c67pF4eQF1HyHaOzQQUWRKPNqTOirXtmNItv0TjbxF9WfL5Ca0jFTZVesQ9NkyviVINkwWCtqQ0qU44N0gT+Imerrmgfl7SmhyhcHxlYlMZWY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761570594; c=relaxed/simple;
	bh=lCbxqfcsSu2fIfVnUm4TW2b3LZHXDuVHxWQpw8axaJo=;
	h=To:Subject:From:Message-Id:Date; b=OeptxPqoaAT2DF5RzdAsaqlJ4999Z09lndwYrD6p4iZP3K7PkCHRqJMHacNYrWDZGeIUyiGHPpx209J4Ur2umcnmFkqtDFiVEYUiTriu2EoTHTzN5I5PTnxdIiFyHkRn0leiB5maGKvDrP+IUSS6SSzPQ5M64VTgXkE3zfNZEc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6AHNDrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6AHNDrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF74C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761570593;
	bh=lCbxqfcsSu2fIfVnUm4TW2b3LZHXDuVHxWQpw8axaJo=;
	h=To:Subject:From:Date:From;
	b=R6AHNDrP56f/7ETwuEzjQQSq7Svijy98ImNJyS/8doyvDpTXW/AdbHULLUo02NlER
	 LzelLZ+xBbZR+XUmOQ6y77gAQjQmDfIYqFJ5rlCM//rSGi/12DWjBHXu3DYrBzgZDT
	 8etQtCU01KbaaSHcClls5TPKns/MKvaGkcCCUoD+Nt/eWiG1aB7VsqSWmBaY14iXQH
	 laHkTHnhrdUH7dHL9sFA0DWu7O7UwDLevUvX7ECCgwaEURIwgsXFIl+8DCXfDGeVih
	 8S7iDAghbyrscPNyA6P+Qp8lE+y5k5e5tdqWm+H9F9GYrjdWmqCnnnJB8f3yf3TY+J
	 IJTR47Vu9vM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD7CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157059358.12950.11448118575006461930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff544cc5c2dc85a710e35b4f5dc93a8dbbe3733bbd3c32e3b517be7888789b16
Date: Mon, 27 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761570593
