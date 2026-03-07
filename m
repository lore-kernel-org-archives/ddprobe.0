Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA5335AC02
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772864094; cv=none; b=L8Ns3zWi/KUf9NhjDvCHTAN006Gs9vB4yUzVoSCdNUrSrPvaq3oWinqhgpTZ0HR7i0tIfl664niwGfH1CwX5JQwnoOEZU4DH76XqTEzB2dhM/1CiMgtKpMwXHshCt44BQViq8zO0JXm9NDEkiMVAW023UFT26Gwj+rEKz1zPveI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772864094; c=relaxed/simple;
	bh=GqgBcvJ4/4aCmWXZGHapwQ1AvDCY8Sim/Z+Oq/obm18=;
	h=To:Subject:From:Message-Id:Date; b=Avu5MRm+yzUGJCQBqqRuq5hZOiRhNOf3qkzO6uU8WG/0unj2HZ2aysxgwSgyEifIgE1ujX1ad3YjyJcfZoZ8luWBhIGcg3HlgcpVa5XcxVDLuLg7HeyWwH2G5K2xyf4rK6/wi8MpAOJ0k28H8b0JK9z8qdPs3pQusVegbegIOuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPh00eWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPh00eWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C626EC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772864093;
	bh=GqgBcvJ4/4aCmWXZGHapwQ1AvDCY8Sim/Z+Oq/obm18=;
	h=To:Subject:From:Date:From;
	b=PPh00eWBnfNPa+0GxzYUolVgkrL/bpdN6RpXMsGGVe1tVoi3KyK7UoFhS6b7nZlh/
	 AYA6m0/GLNlBc+2+GXX161VjRtJbIJ0MvvPqyIw7AMzhpM483EBzTRO12pBBjNBBOV
	 bhjOwJrFjNkZx84ejjrYDvjl2H018wNAhG8QGQvF18meSOjd2//Nw9N8YF+SvY+DdP
	 qfphDYeuUlTcvcXOhqcFW+xkPF2sT0hwvRdmOzssfITK4WO51E78e8MTJmM6afQI40
	 JjOmPrIFLxK5pd+8gZpSPryKJqMCzoXTPd5Y3Kg+arP8fDUvGoWSLiIWhVBvJLMwOh
	 gpRjARpa+HIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB23FC9ED3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286409365.24599.15598816751365946351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e70b16e873103763810fa16d4b4fe6983e3324bf56672ee2a796d1d160774dd
Date: Sat, 07 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772864093
