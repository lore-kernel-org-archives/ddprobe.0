Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1787E59A
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724907354; cv=none; b=iJYGfLCHDrLMnqoGJGQGIAw61ZY3OvRpYthOS1gLeukxIfjwDLAXm0d/shf05kmKTqXWZ1uSAGd1l62lfObb/yvhCz+zhEZAZ3B5GNd9kXUkN8UMe55HMV2artlfOb8h0NCc9yT739dkAl+Hff3iHybzRmaJ8y3CimcMv22hCXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724907354; c=relaxed/simple;
	bh=JoqMjy87lt2t5zhwcNExSXW5meV/0CZ3sPsl+2kG5pc=;
	h=To:Subject:From:Message-Id:Date; b=Agdr2KSvBUYl/3ZCVqdTOE63BZ1n3cYfxSTUgCRw2P0mP1albkwGDJibS2y3r5IjFW5dJC4FphpxlIALUtFCMOIAicJ3/+bnnLq/IEVl2u5UcYK0ZSwHzYHTpgR8acyY+4Fiuwm3CElShA6sO3I9eLnHWdk5gryCChegIYh/kSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKlv7REs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKlv7REs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F2DC4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724907353;
	bh=JoqMjy87lt2t5zhwcNExSXW5meV/0CZ3sPsl+2kG5pc=;
	h=To:Subject:From:Date:From;
	b=SKlv7REs5CfF/5uDn2WX18JFIPnqY+5rapEQKHRyo9PgqKlbh5fPBrnwzdlFHauWY
	 2aIMLZf2qAejzITRFpGqfGHTexfIQ2St5V4OB5bpDj0BNixkaveLNsTSqByUGYRLk0
	 c0PsMEU1TxpIANNpnZ3FOAAVi2ygTvWFTB/fGyuZa2rPGZKmLGRRg9aY+gzpsucHTE
	 gHOs6jjpCd4QBdG/tx6p+gtqg7CkuWWJ+QlIqTjIrD9UW/s8nUnhZWJAdt20R7f0Ri
	 tXZXkEbitj2RaUIpTy4+bwAJjGzvPo1jZIHVF8NXF9rbtcVGQOnNIFqhamQJ6YH/t0
	 fSaIaQvvN/rYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C97C7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490735359.26418.16177738509847870692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca169ac748c6b0c4f1542c4d929565b6d87bb457c192f83c2168b780e24d990c
Date: Thu, 29 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724907353
