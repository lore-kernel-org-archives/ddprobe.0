Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2119A1A0B08
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734775554; cv=none; b=TXBINCm3fWnz19XNnsAkjfJrRN08dVLmacDlhkVdD52nwRmn3nHNejMQGoLfRIV0+2QK78SfScutr90me82qDrYeDrLpXxiwoUEicBsea0ZkyEpB78KKFAh9NFdKdZUCbpFAWH9i200nL/vcCgAt13r8TzlaOfLy1UOdny5Ott4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734775554; c=relaxed/simple;
	bh=onqkhypNJSmlCO7AaKVDNNv/cmhtzssgY/P4q325PIE=;
	h=To:Subject:From:Message-Id:Date; b=MHYUHcdHAP4bGTviN3WGa0FGE0dABwUjN0cX49MTyi2N158BiiDMbTJRBX/Ez6iWxN3fxT9bNHp5l53/+4fzWpjhSDu+lVXYqK5raMQivG/xtxR+cZqCIDWMeBj3NMOZbbre+JhnFMJ3+6J/cuhJK2xoQf7eykOGhwcbBdFG1VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFa+yYni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFa+yYni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D00C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734775553;
	bh=onqkhypNJSmlCO7AaKVDNNv/cmhtzssgY/P4q325PIE=;
	h=To:Subject:From:Date:From;
	b=vFa+yYni1Sa1MCxrbNftDBsWbfs92FLJyHDOKyHTo8ryVBnp86oI+7SSekRFZD7Ct
	 HzmDqRYmnX8GkNbfRBY+NRKToUqchuIxcjyMk+WiUVD6pQ0AdYXslC+uxEQNu+NQLY
	 KYOmVFRBThgjRpKvJsFsckLKqk8bGpUav603tD/OIe4T9dEMANcDVr8GocT+1CU9vn
	 oaeRrJ2BGD655owRRsAhC14kjf6yDfeKJPJYMZIZ/Kb9bF8e3BlcZFV/ZNcYaIpaVz
	 DtLIQq1vfE47V/ybOnP8yFx1opDV9A72o0SsZ9a2lA3S9LttR7ZjZKeiN4OT2zLPQ+
	 gVw2fC0dHjfag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9869BE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477555360.19199.15329247826781359949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3637ca61a4758dbd412411dd35f5e92d5e7337240846edbb7e5d32a6bd2846d7
Date: Sat, 21 Dec 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734775553
