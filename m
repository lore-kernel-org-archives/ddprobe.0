Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527364582E3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787060434; cv=none; b=JF0zpeTRBNLnUFjSWrZKYZNZJmsjmInKLyW0WnEOa1gSULfGwfgKOdR3N5tsz32tcaHGp5SDE7AOZGsPBCGWTHCvGluAfBEy+Wak/7JrIyLYEE/PF4c6ZBlPcBB1xfAJv8UZ8bhSmUnhGeQWb08RuH7tw1xdr6BsIRZxYiN8E6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787060434; c=relaxed/simple;
	bh=mUaZz6aVLr8YGRpGX+gfH8daB1W2yIk51YcV6pcrCEA=;
	h=To:Subject:From:Message-Id:Date; b=b1Bb6V8AJ77j3S6l1TSCa+gJt7xDSV2vvGqyCKhMhGDNWaNT7N1G94CaFVVnOQnwZke8E8HCbTc0I4oXlwgtkQ5SRHIUy0Mr8Zr62Ny0JdRq+j5pkfHbpOXizDS9Ioe5UYaBM2h57XdQxT6CR36+mJzpQlM4zvFOPRP/pPjDr6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyC7QqKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyC7QqKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63C5C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787060433;
	bh=mUaZz6aVLr8YGRpGX+gfH8daB1W2yIk51YcV6pcrCEA=;
	h=To:Subject:From:Date:From;
	b=oyC7QqKwprf+eYPLGDnrxTVXESn0CyLPS/l/lF61a1ldHQkN8IMRdvfPOxNhsEORP
	 8FiKpTEGGiKbLIj2eZ7l/1Q3+NJHYSkjGuACS4q83i4tDayUHUr1p3MFyfv5Uu2D9n
	 Iv00LAg9/HZzm0GNfwmMDgDH0SSU0D9f7iHOC829+vjfdAhGh1YfvQEBOaMIY+3Tl3
	 xZynq+5uJWoIq11EIcAoxK+OYQyXiJA51NdiZkGXBYey9qaVbnqw09gckvRXaqM5KN
	 Uvtp4zRiCO4XUDNhHAqvcDpVDah3S0fV5Jgd2I8lBBX+oAFh5TW+kD/aJWBX8pbZD2
	 MJXFNZu8pFr/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC67C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706043369.21918.7977035722111242977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67c35f7b7a77b5b59b102fa8f56acf566883d1f0a2dd011e692b0531701aaf5
Date: Tue, 18 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787060433
