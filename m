Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8BE6FBF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736603154; cv=none; b=O0bH5zjClWQmbIlNJofIrZMNdLrH3FtyeHyqL5niUpt4h6E9f57NcvyHch38PiXoXiLphjNEEuZOiSpuk3sUaQKCSy3LjtedWWrT1NkiIGL+r1TZndesaQBEiPxgq+h/sPFcAXRcA3s6iMjIJ2Esloyvtzh7dphRMtvovs81VmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736603154; c=relaxed/simple;
	bh=8KmmpwtU6acRejryi47IjOKG1r2n+moIabb0lxSTvmY=;
	h=To:Subject:From:Message-Id:Date; b=eaBq9INc/xRYFjeG7Xj8w/RhXcANcO6tK0Nsy3YBmYpkc3LzIgkNFEMTLSJKjrNfuLMPQDTRIb0kQedu/QQgb+ZDXvFrftvbHRvS1G1B51+okaSIdkRNMSH+oJ8F2y2Nu04axt3RXE5xqag0heR9YAFl16NR9MKJgfXo27U5r6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDse7Rao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDse7Rao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6B4C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736603153;
	bh=8KmmpwtU6acRejryi47IjOKG1r2n+moIabb0lxSTvmY=;
	h=To:Subject:From:Date:From;
	b=eDse7RaoCub0Kh8plRaF/E7JK7VC+4YGYbCLHQh56+LihKcdzN4/r3br2VzEYei/Q
	 1teHJge+DOxVXlm7Jvm/Wf1LhaAh4eGxURBGGmo8oimk1yAV+dozmX+0anRa3jLHmT
	 NVit6UXJ8OQ+rnLyp1LcNOrT4twAT5Nt17xM/EasUSbth9Yd15cNIt84uNzxRVhsid
	 9na+TORChovzqtUjrkElXW7o19srwcqFte1rWgmy96HU534aGJWx3IxUVM1lIMI6Y9
	 h4ceWQUrZU493lR9NnFeXJMKBtKG8Mrfi9us8bWEY2xJ64LwmPH2qYKHKdkXuxXuwL
	 Zb++SFsW+tZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9719DE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660315358.19052.15507987749444079535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817efbe6be801110c9a726660b2856dd816e563508aa38dc54754ca0e999af28
Date: Sat, 11 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736603153
