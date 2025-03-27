Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B0676035
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743106194; cv=none; b=APrihNTVODRx9x3mNG2TNaDIp8hEoWq5yFPMcyEpDiyjkiatgzH74y4IrGiP+M/7As039Jttcq/ZzDtSpx44D+XZn/bjA6HrxxpcEVL8lKRXFSQZVI/rPbEDq9x3FGylwaDKelisBEGdEzqOFdCe74GMAQSCqSNqWXAnfOoO5wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743106194; c=relaxed/simple;
	bh=4QVmjKIfFfnPXUpuaeX1U2Yyq9mJAgf+TzrXNfPoJDc=;
	h=To:Subject:From:Message-Id:Date; b=OF0JaqWmhnBztuO9IJNu2gnSQ1J7S+QN3QrZi/0RUAFRXyLGac3Sxl87R6NBeJ+TEvUP7WGN1XkOU93jEKjSrArimNGORBotyC/3IW5oIOOF6YWEZtqAOzQ4HHLX+qCTrOjBw62MRDpeLRy0gZD8HmbxY/GseIM1ooD8hCYl18M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCKPJ6EX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCKPJ6EX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8184C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743106193;
	bh=4QVmjKIfFfnPXUpuaeX1U2Yyq9mJAgf+TzrXNfPoJDc=;
	h=To:Subject:From:Date:From;
	b=aCKPJ6EXLm9m5KGjhiQTO2l7hmQM/JZcZt4cl5d3iIiExkmVAw0IPFZsX71zza8BR
	 7NTydf0ingdGzYMdzmWIdE1+qeTalBqHgllorf3uRbjzOLLLSIAsgk/du6F7+FLUwh
	 2pA7w7fbzx0L9y2+fEFwENLgWYmwKipdqgcvORtSbL2uu6gDJMPtWHTqfTo7sBBfnl
	 g1snOZhJHctvo0rIVsFtD8lzm/1Vd3HWtWoxT442GqeSUTC+w31d5Jpe8xpRk6yg1p
	 R9KjmOQAWl4o0tBqzgLRiRnyLv09wTF6X3yAtPEQ5JMloOqNjZLhCGsBuzhvFF8u2R
	 wXeDGEIXhyzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998FBC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310619361.14774.12966354282814975283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0f47725df4a429377906598fd4c7126056b450b302467f729b7f55286d4c1b
Date: Thu, 27 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743106193
