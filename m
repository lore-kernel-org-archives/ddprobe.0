Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2E818D655
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722956154; cv=none; b=RxliBq478SjsTW1Y3ZAHp3c2S0GGO04WeP8hi0tCUAeDNqB0g2+i9kdzkIRbVaAMCQp5QMY1DHZ7nDhXa4psBACdgD9OuSFFxjrpio9mUUif4q2gRMZbGZHYvm6WjmihK2JORdkM6zO/M3gXtGae9y0MOieQseoGSKtLGKsUC9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722956154; c=relaxed/simple;
	bh=uxfEQxnYm9FeMbU8FL4jhfIBQf412K4n1208c5suHag=;
	h=To:Subject:From:Message-Id:Date; b=gFAXE5ia69esMzZK5382a6lMcjngvCFTOYY9dwlhAg9PY8uqA+uE3Ytp8qnuU3XLpFms0Y6RbKkT3ccZKxkR5BN2WSSrQ7X0jEDDLZLuGENH5J/TNJUoKLmQ8X5SSJMeXg0x3EkvUD2t8eVFPCeYkajbaiBeqEu05CeRPb+LHEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJFYh7s5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJFYh7s5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE276C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722956153;
	bh=uxfEQxnYm9FeMbU8FL4jhfIBQf412K4n1208c5suHag=;
	h=To:Subject:From:Date:From;
	b=bJFYh7s5Knw3+pz0RnI1P8gTcpb6lRi2svpYeNjSfz9KPXiefae22cEe0hL46ZzgA
	 EmW+8iC/9KLq7zIl0n8455f6RhYNmumQ7CrV5cKaNJh980/MgP0kS1pcBzsN1dy2X3
	 S773Y4HkJFdJAazeRXFBH+yNEc28UwJBWlcysqnnGJlWQo2GeaJFkZHHWhXt9aCZED
	 sgfjXmN/U1+d66WiKoZmpSLas4haPxs+1EbWJmK931ykwlUDgxQiWrwhUZDT3Ult4j
	 pMmjYC5R9lbyh2Fu4BaCMSdCzueH4jUSKPLGN9vc2omfuXABuAC4NB5JX1asjoKQll
	 mGTFa1FW2FmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98375C49EA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172295615361.21054.4286316857263820347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aca4948af3cdae4ab852b48f0b90c06f4ecbbc41626d4ef530eb2b400c1bb7a
Date: Tue, 06 Aug 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722956153
