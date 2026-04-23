Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B832D9EFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776950854; cv=none; b=lmi3fcA1W2+30mxIwpuc4NcchE+tPNtcT970Qp6dLd7SiaCgzhTaAt462OaHqH152rYhc/XPDFfaSv5y/ycvEpD8eup+KBCCAQF/Dh1NM0G36kme1Zr9pFe26Z669fFNO5wuJcTnKIbMcpUOyUXw9poRGDbiEMRra9fvx2IXM3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776950854; c=relaxed/simple;
	bh=tphObHcfEZcd62lgmspsgko8okw3KbWI7OP82YSrxtA=;
	h=To:Subject:From:Message-Id:Date; b=lvcLCyaVd4nzPVfvrIQwL7ks4dtyOGYHReNHhxORODS9S35Xd3O/14GYyO7RgpGcxAfwQKUIH2P6U0X99FTk3KfT+UNlgP2E0QFJvAJd1NnKA2aadP2wCoT83jyKsP1gXSQthRYwQHtDzx9m4jjMrP02/D7I5XkcXi0jP1TFdFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg4E4QWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg4E4QWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5196C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776950853;
	bh=tphObHcfEZcd62lgmspsgko8okw3KbWI7OP82YSrxtA=;
	h=To:Subject:From:Date:From;
	b=Tg4E4QWTLikXZYPhVJIwnyucL+A1tD7DQqvo8uhnrNo2JzbFR2f6C1pPXEGA91sJx
	 MWJ5CBlUlmPCNAZ9uGRqMwmGZhM116gfgmTSRFk0X7cVlb+4nUtSq0oK8oFQTjdwhi
	 MSs3ryWgFXEsUFUHc9RG27qj7ioTZUtHxmDzRQWOs+cK7joz05abzB8WfE2EFr3COS
	 hdk6sMw5/KeJALAlW8QsoOYuZ1JjaUe93cjFPYzKu1t1k8VNp8YFP8+/loiC6EdQq3
	 vOEi2RzjIq/E3wSvbISgN0Gcy2FYZqtMXkAqi7ipoZalXFOfsdXB5FMol34VEF2B7H
	 yompI5VicVQJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E92F589D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695085368.21973.12483942820307614102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05739877ac8c85b036d18c84d9ca42b617da80c0be533c4245a1d2284f980a84
Date: Thu, 23 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776950853
