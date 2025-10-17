Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C60334689
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760681394; cv=none; b=ptTlF3yBkJUy+/M7Aa9FXL9cSG5ySVzrGFKQl3wTAZ393zvR3Xh50AKSv4Pn13QZip6Z3imNR85Xqqyuoc0LHuOf2f9r8i66xvqG4y30BI/7hNs/XeLsGmB5OMLUB2E20IJTSBQX/mcUSy1390MOBhmXN3Ov0Vt7DYZzxlTFGfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760681394; c=relaxed/simple;
	bh=32oYEvIzXSVh0wt0RN9QPALUfgByPqfCGLnTaZOqJPQ=;
	h=To:Subject:From:Message-Id:Date; b=bn1tVNT1ueTknco1wb9Fm2hx3TDuFOG10G5ZBZb0OJKsc0cWzopdhhSTTnJ/lFyzHThR041v2shIyQKXRuk9LmfCrmkX0SNGVBRtCOKmmh+Fsf+9SppXdZ1fvVLMoVEabtQ49/O42qt+OkdAc9T9U/xHH8SRcWGCKHBjdmlkOs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIU45JBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIU45JBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0352C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760681393;
	bh=32oYEvIzXSVh0wt0RN9QPALUfgByPqfCGLnTaZOqJPQ=;
	h=To:Subject:From:Date:From;
	b=jIU45JBT63XyZnODQ7decUy18+EIH7p2EaPjSTABsxDAU2rLwSV825SH/fv6ExMuD
	 Y87xJg8JuJVArSUDboI4cy76PDmzXYrGez5ovwXYnqyMUeKZZJdXLxC8/kaxLPutqu
	 t1H4ajsiIUkRd1+KN8/dLQTuLmhSE11ZHdmHCpKXkJ8/sA5iSEBEPvQHCwT5X7N5Ig
	 rmHsMd5PHbD+lcaD8KzxWszrXK2e5vDIhgs1glrM5USS7oOLqgXfpfT8ln96PQhQD2
	 oX+6qsNk/9MOkYEsaajmPc8tGbKPuFCktq6MzAc7j0t2ibYkTlmjWbhLEE8oLc9m/Q
	 WiSEB8VcB+Xkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F508CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068139357.2150.13274850190383353105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0a95042bb252975b18f3621124863330ea0ed584019aaee7cf9b087833d693
Date: Fri, 17 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760681393
