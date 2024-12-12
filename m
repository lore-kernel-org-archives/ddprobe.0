Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266DF17E016
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734047154; cv=none; b=SPVbtqJVIV68QQnP3OlbF8cWMZMfFufCa/ZX6656dUm/CZigG4hiblrDK870a635RZpzuMiiupjPnrPxdEQN+0E3861dhyfvba8DKEfU9M2Aa1LQmKQTwJQ0XIIc1DXuOkHaDXd8F2vpehxIzXNWQQHZxhJTO7qqGHldEGq1UlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734047154; c=relaxed/simple;
	bh=6IE5Frx2SyVQ7vIsCB88sJTPtOTg+8bkdRMF5P+Mccc=;
	h=To:Subject:From:Message-Id:Date; b=etiHMquBG4We1B6DUDVGSBeo1CJAwsIjWck7T2pPp7rOwJWxqYRIWCs2CV9yKPdGPO7PZ2zJZ8RZEQrYLwzYbPjgIxxnHABAZd5fj9aKoBksUjBSQWoslO1NEowE93EnlnhDFRimstkwEpCI7Bsr6mT2vxTxzpUPsReRsXLpLao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzIliI//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzIliI//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF47C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734047153;
	bh=6IE5Frx2SyVQ7vIsCB88sJTPtOTg+8bkdRMF5P+Mccc=;
	h=To:Subject:From:Date:From;
	b=pzIliI//uif+BDVfPipQ9RR3KQX7CX8sAwcbFjJtbZYHSYgqubuu0VXCliV2CqUZ3
	 Nod/BrIUiuIG3ijpCJ41BJ+041e/Pya/5plDeQP12Ow+h9KJCP99dx9AcNxPem4dl5
	 cvD1LrLcDvf/JPzGfki3UCzmK4ySlAXMjbwA6w2JCzpkVN3FYPmks/EJlxdE1NId+U
	 zhGjJXb7ivEYoaxODjETtgnqJcaKCGLwDwrAAuHGRh9uk3981HtW/Ne+npedZAp+Gv
	 /eLpYzo5e+deelTAOf4EANM1vNENsdgJfzdlnoN7USTiDD/+fMC+yYEzbvCBwTpG2H
	 7whglYw395DWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD22E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404715362.22270.8373887541337267410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781be6b68a74fc94f7e94e56f871390302431fd2818c2b577d18ea5799c2b806
Date: Thu, 12 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734047153
